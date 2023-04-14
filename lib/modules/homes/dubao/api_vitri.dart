import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'api_weather.dart';

const apiKey = '62b56bca98de2c469978f73cb8abfde5';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  WeatherForecast? _forecast;

  // Hàm lấy dự báo thời tiết từ API theo vị trí của thiết bị
  Future<void> _getWeatherFromLocation() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    final latitude = position.latitude;
    final longitude = position.longitude;

    final url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _forecast = WeatherForecast.fromJson(data);
      });
    }
  }

  // Hàm lấy dự báo thời tiết từ API theo tên thành phố
  Future<void> _getWeatherFromCity(String city) async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _forecast = WeatherForecast.fromJson(data);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dự báo thời tiết')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_forecast == null)
              const CircularProgressIndicator()
            else
              Column(
                children: [
                  Text(
                    '${_forecast!.city} - ${_forecast!.temperature}°C',
                    style: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  Image.network(
                    'https://openweathermap.org/img/w/${_forecast!.icon}.png',
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    _forecast!.description,
                    style: const TextStyle(fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            const SizedBox(height: 32.0),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  hintText: 'Nhập thành phố vs: LonDon',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  suffixIcon: Icon(Icons.search),
                ),
                onSubmitted: (value) async {
                  if (value.isNotEmpty) {
                    await _getWeatherFromCity(value);
                  }
                },
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _getWeatherFromLocation,
              child: const Text('Xem'),
            ),
          ],
        ),
      ),
    );
  }
}


