import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const apiKey =
    '62b56bca98de2c469978f73cb8abfde5'; // Thay YOUR_API_KEY bằng API key của bạn

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  _WeatherForecastState createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  String? _city;
  String? _iconUrl;
  double? _temperature;
  String? _weather;
  double? _minTemp;
  double? _maxTemp;
  double? _humidity;
  double? _windSpeed;

  Future<void> _fetchWeatherData(String city) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _city = city;
        _temperature = data['main']['temp'].toDouble();
        _weather = data['weather'][0]['description'].toString();
        _iconUrl =
            'http://openweathermap.org/img/w/${data['weather'][0]['icon']}.png';
        _minTemp = data['main']['temp_min'].toDouble();
        _maxTemp = data['main']['temp_max'].toDouble();
        _humidity = data['main']['humidity'].toDouble();
        _windSpeed = data['wind']['speed'].toDouble();
      });
    } else {
      print(response.statusCode);
      throw Exception('Lỗi khi lấy dữ liệu thời tiết');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dự báo thời tiết'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_iconUrl != null)
              Image.network(
                _iconUrl!,
                height: 150.0,
                width: 150.0,
                fit: BoxFit.cover,
              ),
            if (_city != null)
              Text(
                'Thành phố: $_city',
                style: const TextStyle(fontSize: 24.0),
              ),
            if (_temperature != null)
              Text(
                'Nhiệt độ: ${_temperature!.toStringAsFixed(1)}\u00B0C',
                style: const TextStyle(fontSize: 24.0),
              ),
            if (_minTemp != null && _maxTemp != null)
              Text(
                'Nhiệt độ thấp nhất: ${_minTemp!.toStringAsFixed(1)}\u00B0C, Nhiệt độ cao nhất: ${_maxTemp!.toStringAsFixed(1)}\u00B0C',
                style: const TextStyle(fontSize: 18.0),
              ),
            if (_weather != null)
              Text(
                'Thời tiết: $_weather',
                style: const TextStyle(fontSize: 24.0),
              ),
            if (_humidity != null && _windSpeed != null)
              Text(
                'Độ ẩm: ${_humidity!.toStringAsFixed(1)}%, Tốc độ gió: ${_windSpeed!.toStringAsFixed(1)}m/s',
                style: const TextStyle(fontSize: 18.0),
              ),
            const SizedBox(height: 20.0),
            const Text('Nhập tên thành phố:'),
            const SizedBox(height: 10.0),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                onSubmitted: (value) {
                  _fetchWeatherData(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Nhập tên thành phố',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
