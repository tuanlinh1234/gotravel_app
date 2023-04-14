import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  _WeatherForecastState createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  final String city = 'Hanoi';
  final String apiKey =
      'YOUR_API_KEY'; // Thay YOUR_API_KEY bằng API key của bạn
  String _weatherDescription = '';
  int _temperature = 0;
  String _imageUrl = '';

  Future<void> _fetchWeatherData() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _weatherDescription = data['weather'][0]['description'];
        _temperature = data['main']['temp'].round();
        _imageUrl =
            'https://openweathermap.org/img/w/${data['weather'][0]}.png';
      });
    } else {
      print(response.statusCode);
      throw Exception('Lỗi khi lấy dữ liệu thời tiết');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(_imageUrl),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _weatherDescription,
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Nhiệt độ: $_temperature\u00B0C',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ],
    );
  }
}
