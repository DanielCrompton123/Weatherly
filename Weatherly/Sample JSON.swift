//
//  Sample JSON.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import Foundation

func sampleWeather() -> WeatherList {
    let sampleJSON = """
    {
        "cod": "200",
        "message": 0,
        "cnt": 40,
        "list": [
            {
                "dt": 1720558800,
                "main": {
                    "temp": 17.71,
                    "feels_like": 18.02,
                    "temp_min": 15.76,
                    "temp_max": 17.71,
                    "pressure": 1005,
                    "sea_level": 1005,
                    "grnd_level": 1005,
                    "humidity": 95,
                    "temp_kf": 1.95
                },
                "weather": [
                    {
                        "id": 501,
                        "main": "Rain",
                        "description": "moderate rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 60
                },
                "wind": {
                    "speed": 3.69,
                    "deg": 39,
                    "gust": 3.83
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 3.23
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-09 21:00:00"
            },
            {
                "dt": 1720569600,
                "main": {
                    "temp": 16.85,
                    "feels_like": 17.1,
                    "temp_min": 15.93,
                    "temp_max": 16.85,
                    "pressure": 1006,
                    "sea_level": 1006,
                    "grnd_level": 1006,
                    "humidity": 96,
                    "temp_kf": 0.92
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 80
                },
                "wind": {
                    "speed": 1.94,
                    "deg": 154,
                    "gust": 2.84
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 1.97
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-10 00:00:00"
            },
            {
                "dt": 1720580400,
                "main": {
                    "temp": 15.66,
                    "feels_like": 15.79,
                    "temp_min": 15.66,
                    "temp_max": 15.66,
                    "pressure": 1005,
                    "sea_level": 1005,
                    "grnd_level": 1005,
                    "humidity": 96,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 2.27,
                    "deg": 172,
                    "gust": 3.08
                },
                "visibility": 10000,
                "pop": 0.88,
                "rain": {
                    "3h": 0.69
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-10 03:00:00"
            },
            {
                "dt": 1720591200,
                "main": {
                    "temp": 15.38,
                    "feels_like": 15.43,
                    "temp_min": 15.38,
                    "temp_max": 15.38,
                    "pressure": 1006,
                    "sea_level": 1006,
                    "grnd_level": 1006,
                    "humidity": 94,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.2,
                    "deg": 177,
                    "gust": 4.1
                },
                "visibility": 10000,
                "pop": 0.83,
                "rain": {
                    "3h": 0.45
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-10 06:00:00"
            },
            {
                "dt": 1720602000,
                "main": {
                    "temp": 15.3,
                    "feels_like": 15.34,
                    "temp_min": 15.3,
                    "temp_max": 15.3,
                    "pressure": 1007,
                    "sea_level": 1007,
                    "grnd_level": 1007,
                    "humidity": 94,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 2.64,
                    "deg": 254,
                    "gust": 3.49
                },
                "visibility": 10000,
                "pop": 0.83,
                "rain": {
                    "3h": 0.74
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-10 09:00:00"
            },
            {
                "dt": 1720612800,
                "main": {
                    "temp": 14.81,
                    "feels_like": 14.8,
                    "temp_min": 14.81,
                    "temp_max": 14.81,
                    "pressure": 1009,
                    "sea_level": 1009,
                    "grnd_level": 1009,
                    "humidity": 94,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 5.31,
                    "deg": 265,
                    "gust": 6.8
                },
                "visibility": 10000,
                "pop": 0.91,
                "rain": {
                    "3h": 0.64
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-10 12:00:00"
            },
            {
                "dt": 1720623600,
                "main": {
                    "temp": 14.03,
                    "feels_like": 13.89,
                    "temp_min": 14.03,
                    "temp_max": 14.03,
                    "pressure": 1011,
                    "sea_level": 1011,
                    "grnd_level": 1011,
                    "humidity": 92,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 7.32,
                    "deg": 275,
                    "gust": 8.5
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.74
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-10 15:00:00"
            },
            {
                "dt": 1720634400,
                "main": {
                    "temp": 13.84,
                    "feels_like": 13.66,
                    "temp_min": 13.84,
                    "temp_max": 13.84,
                    "pressure": 1013,
                    "sea_level": 1013,
                    "grnd_level": 1013,
                    "humidity": 91,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 7.15,
                    "deg": 276,
                    "gust": 7.87
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.29
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-10 18:00:00"
            },
            {
                "dt": 1720645200,
                "main": {
                    "temp": 13.63,
                    "feels_like": 13.4,
                    "temp_min": 13.63,
                    "temp_max": 13.63,
                    "pressure": 1014,
                    "sea_level": 1014,
                    "grnd_level": 1014,
                    "humidity": 90,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 6.74,
                    "deg": 284,
                    "gust": 7.61
                },
                "visibility": 10000,
                "pop": 0.67,
                "rain": {
                    "3h": 0.32
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-10 21:00:00"
            },
            {
                "dt": 1720656000,
                "main": {
                    "temp": 13.48,
                    "feels_like": 13.26,
                    "temp_min": 13.48,
                    "temp_max": 13.48,
                    "pressure": 1015,
                    "sea_level": 1015,
                    "grnd_level": 1015,
                    "humidity": 91,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 5.31,
                    "deg": 279,
                    "gust": 6.2
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.89
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-11 00:00:00"
            },
            {
                "dt": 1720666800,
                "main": {
                    "temp": 13.7,
                    "feels_like": 13.5,
                    "temp_min": 13.7,
                    "temp_max": 13.7,
                    "pressure": 1016,
                    "sea_level": 1016,
                    "grnd_level": 1016,
                    "humidity": 91,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 4.2,
                    "deg": 307,
                    "gust": 5.48
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.99
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-11 03:00:00"
            },
            {
                "dt": 1720677600,
                "main": {
                    "temp": 13.64,
                    "feels_like": 13.41,
                    "temp_min": 13.64,
                    "temp_max": 13.64,
                    "pressure": 1017,
                    "sea_level": 1017,
                    "grnd_level": 1017,
                    "humidity": 90,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 2.86,
                    "deg": 10,
                    "gust": 3.61
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.43
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-11 06:00:00"
            },
            {
                "dt": 1720688400,
                "main": {
                    "temp": 13.65,
                    "feels_like": 13.37,
                    "temp_min": 13.65,
                    "temp_max": 13.65,
                    "pressure": 1018,
                    "sea_level": 1018,
                    "grnd_level": 1018,
                    "humidity": 88,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 4.24,
                    "deg": 34,
                    "gust": 4.11
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.46
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-11 09:00:00"
            },
            {
                "dt": 1720699200,
                "main": {
                    "temp": 13.34,
                    "feels_like": 12.9,
                    "temp_min": 13.34,
                    "temp_max": 13.34,
                    "pressure": 1019,
                    "sea_level": 1019,
                    "grnd_level": 1019,
                    "humidity": 83,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 98
                },
                "wind": {
                    "speed": 3.75,
                    "deg": 43,
                    "gust": 4.66
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-11 12:00:00"
            },
            {
                "dt": 1720710000,
                "main": {
                    "temp": 14.77,
                    "feels_like": 14.29,
                    "temp_min": 14.77,
                    "temp_max": 14.77,
                    "pressure": 1020,
                    "sea_level": 1020,
                    "grnd_level": 1020,
                    "humidity": 76,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 86
                },
                "wind": {
                    "speed": 1.24,
                    "deg": 30,
                    "gust": 2.68
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-11 15:00:00"
            },
            {
                "dt": 1720720800,
                "main": {
                    "temp": 15.49,
                    "feels_like": 15.11,
                    "temp_min": 15.49,
                    "temp_max": 15.49,
                    "pressure": 1020,
                    "sea_level": 1020,
                    "grnd_level": 1020,
                    "humidity": 77,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 80
                },
                "wind": {
                    "speed": 2.36,
                    "deg": 354,
                    "gust": 2.43
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-11 18:00:00"
            },
            {
                "dt": 1720731600,
                "main": {
                    "temp": 13.87,
                    "feels_like": 13.48,
                    "temp_min": 13.87,
                    "temp_max": 13.87,
                    "pressure": 1020,
                    "sea_level": 1020,
                    "grnd_level": 1020,
                    "humidity": 83,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 92
                },
                "wind": {
                    "speed": 3.77,
                    "deg": 102,
                    "gust": 5.8
                },
                "visibility": 10000,
                "pop": 0.2,
                "rain": {
                    "3h": 0.19
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-11 21:00:00"
            },
            {
                "dt": 1720742400,
                "main": {
                    "temp": 13.15,
                    "feels_like": 12.61,
                    "temp_min": 13.15,
                    "temp_max": 13.15,
                    "pressure": 1020,
                    "sea_level": 1020,
                    "grnd_level": 1020,
                    "humidity": 80,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "clouds": {
                    "all": 87
                },
                "wind": {
                    "speed": 2.79,
                    "deg": 83,
                    "gust": 3.85
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-12 00:00:00"
            },
            {
                "dt": 1720753200,
                "main": {
                    "temp": 13.16,
                    "feels_like": 12.57,
                    "temp_min": 13.16,
                    "temp_max": 13.16,
                    "pressure": 1019,
                    "sea_level": 1019,
                    "grnd_level": 1019,
                    "humidity": 78,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 2.6,
                    "deg": 56,
                    "gust": 2.95
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-12 03:00:00"
            },
            {
                "dt": 1720764000,
                "main": {
                    "temp": 12.9,
                    "feels_like": 12.28,
                    "temp_min": 12.9,
                    "temp_max": 12.9,
                    "pressure": 1019,
                    "sea_level": 1019,
                    "grnd_level": 1019,
                    "humidity": 78,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.94,
                    "deg": 29,
                    "gust": 4.88
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-12 06:00:00"
            },
            {
                "dt": 1720774800,
                "main": {
                    "temp": 14.05,
                    "feels_like": 13.26,
                    "temp_min": 14.05,
                    "temp_max": 14.05,
                    "pressure": 1019,
                    "sea_level": 1019,
                    "grnd_level": 1019,
                    "humidity": 67,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 4.66,
                    "deg": 33,
                    "gust": 6.18
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-12 09:00:00"
            },
            {
                "dt": 1720785600,
                "main": {
                    "temp": 12.33,
                    "feels_like": 11.68,
                    "temp_min": 12.33,
                    "temp_max": 12.33,
                    "pressure": 1019,
                    "sea_level": 1019,
                    "grnd_level": 1019,
                    "humidity": 79,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 5.12,
                    "deg": 18,
                    "gust": 7.07
                },
                "visibility": 10000,
                "pop": 0.2,
                "rain": {
                    "3h": 0.28
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-12 12:00:00"
            },
            {
                "dt": 1720796400,
                "main": {
                    "temp": 12.23,
                    "feels_like": 11.7,
                    "temp_min": 12.23,
                    "temp_max": 12.23,
                    "pressure": 1018,
                    "sea_level": 1018,
                    "grnd_level": 1018,
                    "humidity": 84,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.97,
                    "deg": 354,
                    "gust": 5.84
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 1.06
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-12 15:00:00"
            },
            {
                "dt": 1720807200,
                "main": {
                    "temp": 14.29,
                    "feels_like": 13.86,
                    "temp_min": 14.29,
                    "temp_max": 14.29,
                    "pressure": 1017,
                    "sea_level": 1017,
                    "grnd_level": 1017,
                    "humidity": 80,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.7,
                    "deg": 344,
                    "gust": 5.11
                },
                "visibility": 10000,
                "pop": 0.99,
                "rain": {
                    "3h": 0.23
                },
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-12 18:00:00"
            },
            {
                "dt": 1720818000,
                "main": {
                    "temp": 14.03,
                    "feels_like": 13.66,
                    "temp_min": 14.03,
                    "temp_max": 14.03,
                    "pressure": 1017,
                    "sea_level": 1017,
                    "grnd_level": 1017,
                    "humidity": 83,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 500,
                        "main": "Rain",
                        "description": "light rain",
                        "icon": "10n"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.08,
                    "deg": 351,
                    "gust": 4.17
                },
                "visibility": 10000,
                "pop": 1,
                "rain": {
                    "3h": 0.57
                },
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-12 21:00:00"
            },
            {
                "dt": 1720828800,
                "main": {
                    "temp": 13.14,
                    "feels_like": 12.55,
                    "temp_min": 13.14,
                    "temp_max": 13.14,
                    "pressure": 1017,
                    "sea_level": 1017,
                    "grnd_level": 1017,
                    "humidity": 78,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "clouds": {
                    "all": 99
                },
                "wind": {
                    "speed": 4,
                    "deg": 22,
                    "gust": 4.12
                },
                "visibility": 10000,
                "pop": 0.31,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-13 00:00:00"
            },
            {
                "dt": 1720839600,
                "main": {
                    "temp": 11.62,
                    "feels_like": 10.98,
                    "temp_min": 11.62,
                    "temp_max": 11.62,
                    "pressure": 1016,
                    "sea_level": 1016,
                    "grnd_level": 1016,
                    "humidity": 82,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "clouds": {
                    "all": 69
                },
                "wind": {
                    "speed": 4.52,
                    "deg": 31,
                    "gust": 5.79
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-13 03:00:00"
            },
            {
                "dt": 1720850400,
                "main": {
                    "temp": 11.92,
                    "feels_like": 11.36,
                    "temp_min": 11.92,
                    "temp_max": 11.92,
                    "pressure": 1016,
                    "sea_level": 1016,
                    "grnd_level": 1016,
                    "humidity": 84,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 53
                },
                "wind": {
                    "speed": 4.21,
                    "deg": 30,
                    "gust": 5.48
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-13 06:00:00"
            },
            {
                "dt": 1720861200,
                "main": {
                    "temp": 13.75,
                    "feels_like": 13.22,
                    "temp_min": 13.75,
                    "temp_max": 13.75,
                    "pressure": 1016,
                    "sea_level": 1016,
                    "grnd_level": 1016,
                    "humidity": 78,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "clouds": {
                    "all": 12
                },
                "wind": {
                    "speed": 3.93,
                    "deg": 22,
                    "gust": 4.64
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-13 09:00:00"
            },
            {
                "dt": 1720872000,
                "main": {
                    "temp": 14.97,
                    "feels_like": 14.45,
                    "temp_min": 14.97,
                    "temp_max": 14.97,
                    "pressure": 1016,
                    "sea_level": 1016,
                    "grnd_level": 1016,
                    "humidity": 74,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "clouds": {
                    "all": 10
                },
                "wind": {
                    "speed": 3.39,
                    "deg": 305,
                    "gust": 3.7
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-13 12:00:00"
            },
            {
                "dt": 1720882800,
                "main": {
                    "temp": 15.79,
                    "feels_like": 15.33,
                    "temp_min": 15.79,
                    "temp_max": 15.79,
                    "pressure": 1015,
                    "sea_level": 1015,
                    "grnd_level": 1015,
                    "humidity": 73,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "clouds": {
                    "all": 11
                },
                "wind": {
                    "speed": 4.73,
                    "deg": 282,
                    "gust": 4.41
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-13 15:00:00"
            },
            {
                "dt": 1720893600,
                "main": {
                    "temp": 16.38,
                    "feels_like": 16.03,
                    "temp_min": 16.38,
                    "temp_max": 16.38,
                    "pressure": 1014,
                    "sea_level": 1014,
                    "grnd_level": 1014,
                    "humidity": 75,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "clouds": {
                    "all": 8
                },
                "wind": {
                    "speed": 2.43,
                    "deg": 346,
                    "gust": 3.29
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-13 18:00:00"
            },
            {
                "dt": 1720904400,
                "main": {
                    "temp": 14.99,
                    "feels_like": 14.66,
                    "temp_min": 14.99,
                    "temp_max": 14.99,
                    "pressure": 1015,
                    "sea_level": 1015,
                    "grnd_level": 1015,
                    "humidity": 81,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02n"
                    }
                ],
                "clouds": {
                    "all": 12
                },
                "wind": {
                    "speed": 3.29,
                    "deg": 317,
                    "gust": 3.34
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-13 21:00:00"
            },
            {
                "dt": 1720915200,
                "main": {
                    "temp": 14.52,
                    "feels_like": 14.22,
                    "temp_min": 14.52,
                    "temp_max": 14.52,
                    "pressure": 1014,
                    "sea_level": 1014,
                    "grnd_level": 1014,
                    "humidity": 84,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "clouds": {
                    "all": 8
                },
                "wind": {
                    "speed": 3.53,
                    "deg": 275,
                    "gust": 4.1
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-14 00:00:00"
            },
            {
                "dt": 1720926000,
                "main": {
                    "temp": 14.08,
                    "feels_like": 13.71,
                    "temp_min": 14.08,
                    "temp_max": 14.08,
                    "pressure": 1013,
                    "sea_level": 1013,
                    "grnd_level": 1013,
                    "humidity": 83,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "clouds": {
                    "all": 3
                },
                "wind": {
                    "speed": 3.39,
                    "deg": 274,
                    "gust": 4.01
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "n"
                },
                "dt_txt": "2024-07-14 03:00:00"
            },
            {
                "dt": 1720936800,
                "main": {
                    "temp": 15.02,
                    "feels_like": 14.69,
                    "temp_min": 15.02,
                    "temp_max": 15.02,
                    "pressure": 1013,
                    "sea_level": 1013,
                    "grnd_level": 1013,
                    "humidity": 81,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03d"
                    }
                ],
                "clouds": {
                    "all": 40
                },
                "wind": {
                    "speed": 2.94,
                    "deg": 261,
                    "gust": 3.92
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-14 06:00:00"
            },
            {
                "dt": 1720947600,
                "main": {
                    "temp": 15.4,
                    "feels_like": 15.03,
                    "temp_min": 15.4,
                    "temp_max": 15.4,
                    "pressure": 1013,
                    "sea_level": 1013,
                    "grnd_level": 1013,
                    "humidity": 78,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.91,
                    "deg": 236,
                    "gust": 4.28
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-14 09:00:00"
            },
            {
                "dt": 1720958400,
                "main": {
                    "temp": 16.12,
                    "feels_like": 15.85,
                    "temp_min": 16.12,
                    "temp_max": 16.12,
                    "pressure": 1013,
                    "sea_level": 1013,
                    "grnd_level": 1013,
                    "humidity": 79,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 100
                },
                "wind": {
                    "speed": 3.81,
                    "deg": 253,
                    "gust": 5.22
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-14 12:00:00"
            },
            {
                "dt": 1720969200,
                "main": {
                    "temp": 16.2,
                    "feels_like": 15.99,
                    "temp_min": 16.2,
                    "temp_max": 16.2,
                    "pressure": 1012,
                    "sea_level": 1012,
                    "grnd_level": 1012,
                    "humidity": 81,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 82
                },
                "wind": {
                    "speed": 4.69,
                    "deg": 273,
                    "gust": 6.07
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-14 15:00:00"
            },
            {
                "dt": 1720980000,
                "main": {
                    "temp": 15.79,
                    "feels_like": 15.57,
                    "temp_min": 15.79,
                    "temp_max": 15.79,
                    "pressure": 1012,
                    "sea_level": 1012,
                    "grnd_level": 1012,
                    "humidity": 82,
                    "temp_kf": 0
                },
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": {
                    "all": 91
                },
                "wind": {
                    "speed": 3.43,
                    "deg": 281,
                    "gust": 4.96
                },
                "visibility": 10000,
                "pop": 0,
                "sys": {
                    "pod": "d"
                },
                "dt_txt": "2024-07-14 18:00:00"
            }
        ],
        "city": {
            "id": 2655459,
            "name": "Blackpool",
            "coord": {
                "lat": 53.8179,
                "lon": -3.051
            },
            "country": "GB",
            "population": 143101,
            "timezone": 3600,
            "sunrise": 1720497203,
            "sunset": 1720557669
        }
    }
    """
    
    let d = sampleJSON.data(using: .utf8)!
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    return try! decoder.decode(WeatherList.self, from: d)
}
