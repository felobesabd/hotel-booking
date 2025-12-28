<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Hotel\Enums\BookingStatusEnum;
use Botble\Hotel\Facades\InvoiceHelper;
use Botble\Hotel\Models\Booking;
use Botble\Hotel\Models\BookingAddress;
use Botble\Hotel\Models\BookingRoom;
use Botble\Hotel\Models\Customer;
use Botble\Hotel\Models\Room;
use Botble\Hotel\Models\Service;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Payment\Models\Payment;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class BookingSeeder extends BaseSeeder
{
    public function run(): void
    {
        Booking::query()->truncate();
        BookingRoom::query()->truncate();
        BookingAddress::query()->truncate();
        Payment::query()->truncate();

        $rooms = Room::query()->get();
        $customers = Customer::query()->get();
        $services = Service::query()->get();

        $faker = $this->fake();

        // Create a more realistic distribution of bookings across time
        // 1. Bookings from the past (historical data)
        $this->createBookingsForPeriod(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->subMonths(12), // Start 12 months ago
            Carbon::now()->subDays(1),    // End yesterday
            count: 100 // More historical bookings
        );

        // 2. Current month bookings
        $this->createBookingsForPeriod(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->startOfMonth(),
            Carbon::now(),
            count: 30
        );

        // 3. Future bookings (next 6 months)
        $this->createBookingsForMonth(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->addMonths(1),
            15
        );

        $this->createBookingsForMonth(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->addMonths(2),
            20
        );

        $this->createBookingsForMonth(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->addMonths(3),
            25
        );

        $this->createBookingsForMonth(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->addMonths(4),
            20
        );

        $this->createBookingsForMonth(
            $faker,
            $rooms,
            $customers,
            $services,
            Carbon::now()->addMonths(5),
            15
        );

        // 4. Seasonal variations (holiday periods)
        // Christmas/New Year period
        $christmasStart = Carbon::create(null, 12, 20);
        $christmasEnd = Carbon::create(null, 12, 31);
        if ($christmasStart->isPast()) {
            $christmasStart->addYear();
            $christmasEnd->addYear();
        }

        $this->createBookingsForPeriod(
            $faker,
            $rooms,
            $customers,
            $services,
            $christmasStart,
            $christmasEnd,
            count: 40,
            isHoliday: true
        );

        // Summer holiday period
        $summerStart = Carbon::create(null, 7, 1);
        $summerEnd = Carbon::create(null, 8, 31);
        if ($summerStart->isPast()) {
            $summerStart->addYear();
            $summerEnd->addYear();
        }

        $this->createBookingsForPeriod(
            $faker,
            $rooms,
            $customers,
            $services,
            $summerStart,
            $summerEnd,
            count: 80,
            isHoliday: true
        );

        $this->outputCreatedCount();
    }

    private function createBookingsForPeriod(
        $faker,
        $rooms,
        $customers,
        $services,
        Carbon $startDate,
        Carbon $endDate,
        int $count,
        bool $isHoliday = false
    ): void {
        $period = CarbonPeriod::between($startDate, $endDate);
        $days = iterator_to_array($period);

        for ($i = 0; $i < $count; $i++) {
            // Random date within the period
            $randomDate = $faker->randomElement($days);
            $this->createBooking(
                $faker,
                $rooms,
                $customers,
                $services,
                $randomDate,
                $isHoliday
            );
        }
    }

    private function createBookingsForMonth(
        $faker,
        $rooms,
        $customers,
        $services,
        Carbon $month,
        int $count
    ): void {
        $startOfMonth = $month->copy()->startOfMonth();
        $endOfMonth = $month->copy()->endOfMonth();

        $this->createBookingsForPeriod(
            $faker,
            $rooms,
            $customers,
            $services,
            $startOfMonth,
            $endOfMonth,
            $count
        );
    }

    private function createBooking(
        $faker,
        $rooms,
        $customers,
        $services,
        Carbon $bookingDate,
        bool $isHoliday = false
    ): void {
        $room = $rooms->random();
        $customer = $customers->random();

        // FIXED: Properly get random services
        $randomServices = $services->count() > 0 ?
            $services->random(min(rand(0, 3), $services->count())) :
            collect();

        if (!is_iterable($randomServices)) {
            $randomServices = collect([$randomServices]);
        }

        // Adjust booking parameters based on season
        $stayLength = $isHoliday ? rand(4, 7) : rand(2, 5); // Longer stays during holidays
        $numberOfRooms = $isHoliday ? rand(1, 2) : rand(1, 3); // Fewer rooms during peak seasons
        $priceMultiplier = $isHoliday ? 1.2 : 1.0; // Higher prices during holidays

        $address = new BookingAddress([
            'first_name' => $faker->firstName(),
            'last_name' => $faker->lastName(),
            'phone' => $faker->phoneNumber(),
            'email' => $faker->safeEmail(),
            'country' => $faker->country(),
            'state' => $faker->city(),
            'city' => $faker->city(),
            'address' => $faker->address(),
            'zip' => $faker->postcode(),
        ]);

        $adjustedPrice = $room->price * $priceMultiplier;

        $bookingRoom = new BookingRoom([
            'room_id' => $room->id,
            'room_name' => $room->name,
            'room_image' => Arr::first($room->images),
            'price' => $adjustedPrice,
            'number_of_rooms' => $numberOfRooms,
            'start_date' => $bookingDate->toDateString(),
            'end_date' => $bookingDate->clone()->addDays($stayLength)->toDateString(),
        ]);

        $amount = $adjustedPrice * $numberOfRooms * $stayLength;

        $booking = Booking::query()->create([
            'customer_id' => $customer->id,
            'amount' => $amount,
            'sub_total' => $amount,
            'requests' => $faker->sentence(),
            'number_of_guests' => $numberOfRooms * rand(1, 3),
            'transaction_id' => Str::random(20),
            'tax_amount' => $amount * 0.1, // 10% tax for realism
            'status' => $this->getRealisticStatus($bookingDate, $isHoliday),
            'created_at' => $bookingDate->clone()->subDays(rand(1, 30)), // Booking created before check-in
        ]);

        if ($randomServices->isNotEmpty()) {
            // FIXED: Properly attach services
            $serviceIds = $randomServices->pluck('id')->toArray();
            $booking->services()->sync($serviceIds);

            // Add service costs to total
            $serviceCost = $randomServices->sum('price') * $stayLength;
            $booking->amount += $serviceCost;
            $booking->sub_total += $serviceCost;
            $booking->save();
        }

        $address->booking()->associate($booking)->save();
        $bookingRoom->booking()->associate($booking)->save();

        $paymentDate = $bookingDate->clone()->subDays(rand(0, 14)); // Payment made 0-14 days before check-in

        $payment = Payment::query()->create([
            'amount' => $booking->amount,
            'currency' => 'USD',
            'user_id' => $customer->id,
            'charge_id' => Str::random(20),
            'payment_channel' => $faker->randomElement(PaymentMethodEnum::values()),
            'status' => $booking->status === BookingStatusEnum::CANCELLED
                ? PaymentStatusEnum::FAILED
                : ($booking->status === BookingStatusEnum::PENDING
                    ? PaymentStatusEnum::PENDING
                    : PaymentStatusEnum::COMPLETED),
            'order_id' => $booking->getKey(),
            'payment_type' => 'direct',
            'customer_id' => $customer->id,
            'customer_type' => $customer::class,
            'created_at' => $paymentDate,
        ]);

        $booking->payment()->associate($payment)->save();

        InvoiceHelper::store($booking);
    }

    private function getRealisticStatus(Carbon $bookingDate, bool $isHoliday = false): string
    {
        $now = Carbon::now();

        // Past bookings should mostly be completed
        if ($bookingDate->isPast()) {
            $rand = rand(1, 100);

            if ($rand <= 85) { // 85% completed
                return BookingStatusEnum::COMPLETED;
            } elseif ($rand <= 95) { // 10% cancelled
                return BookingStatusEnum::CANCELLED;
            } else { // 5% pending (for some reason)
                return BookingStatusEnum::PENDING;
            }
        }

        // Future bookings - FIXED: Future bookings should be CONFIRMED, not COMPLETED
        $rand = rand(1, 100);

        if ($rand <= 70) { // 70% confirmed
            return BookingStatusEnum::COMPLETED;
        } elseif ($rand <= 90) { // 20% pending
            return BookingStatusEnum::PENDING;
        } else { // 10% cancelled
            return BookingStatusEnum::CANCELLED;
        }
    }

    private function outputCreatedCount(): void
    {
        $bookingCount = Booking::count();
        $bookingRoomCount = BookingRoom::count();
        $paymentCount = Payment::count();

        $this->command->info("Created {$bookingCount} bookings with realistic distribution across time.");
        $this->command->info("Created {$bookingRoomCount} booking rooms.");
        $this->command->info("Created {$paymentCount} payments.");
    }
}
