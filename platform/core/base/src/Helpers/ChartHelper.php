<?php

namespace Botble\Base\Helpers;

use Carbon\Carbon;
use Exception;
use Illuminate\Support\Facades\Validator;

class ChartHelper
{
    /*public static function getDateRange(): array
    {
        $request = app('request');

        $now = Carbon::now();

        $validator = Validator::make($request->only(['date_from', 'date_to']), [
            'date_from' => ['nullable', 'date'],
            'date_to' => ['nullable', 'date'],
        ]);

        if ($validator->fails()) {
            return [$now, $now];
        }

        $startDate = Carbon::now()->subDays(29);
        $endDate = Carbon::now();

        if ($dateFrom = $request->input('date_from')) {
            $now = Carbon::now();

            try {
                $startDate = $now->createFromFormat('Y-m-d', $dateFrom);
            } catch (Exception) {
                $startDate = $now->subDays(29);
            }
        }

        if ($dateTo = $request->input('date_to')) {
            $now = Carbon::now();

            try {
                $endDate = $now->createFromFormat('Y-m-d', $dateTo);
            } catch (Exception) {
                $endDate = $now;
            }
        }

        if ($endDate->gt($now)) {
            $endDate = $now;
        }

        if ($startDate->gt($endDate)) {
            $startDate = $now->subDays(29);
        }

        return [$startDate, $endDate];
    }*/

    public static function getDateRange(): array
    {
        $request = request();
        $now = Carbon::now();

        $dateFrom = normalizeDate($request->input('date_from'));
        $dateTo   = normalizeDate($request->input('date_to'));

        $startDate = $now->copy()->subDays(29);
        $endDate   = $now->copy();

        if ($dateFrom) {
            try {
                $startDate = Carbon::createFromFormat('Y-m-d', $dateFrom);
            } catch (\Throwable) {}
        }

        if ($dateTo) {
            try {
                $endDate = Carbon::createFromFormat('Y-m-d', $dateTo);
            } catch (\Throwable) {}
        }

        if ($endDate->gt($now)) {
            $endDate = $now;
        }

        if ($startDate->gt($endDate)) {
            $startDate = $endDate->copy()->subDays(29);
        }

        \Log::info('Chart date range', [
            'raw_from' => request()->input('date_from'),
            'raw_to'   => request()->input('date_to'),
            'from'     => $startDate->toDateTimeString(),
            'to'       => $endDate->toDateTimeString(),
        ]);
        return [$startDate, $endDate];
    }
}
