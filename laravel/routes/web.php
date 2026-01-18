<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return 'OK';
});

Route::get('/frontend/{any?}', function () {
    $file = public_path('frontend/index.html');
    if (file_exists($file)) {
        return response()->file($file);
    }
    abort(404);
})->where('any', '.*');
