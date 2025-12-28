<?php

use Botble\Hotel\Facades\HotelHelper;

if (! function_exists('get_hotel_setting')) {
    /**
     * @deprecated Use HotelHelper::getSetting() instead.
     */
    function get_hotel_setting(string $key, bool|int|string|null $default = ''): array|int|string|null
    {
        return HotelHelper::getSetting($key, $default);
    }
}

if (! function_exists('normalizeDate')) {
    function normalizeDate(?string $date): ?string
    {
        if (! $date) {
            return null;
        }

        $arabic = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩'];
        $english = ['0','1','2','3','4','5','6','7','8','9'];

        return str_replace($arabic, $english, $date);
    }
}
