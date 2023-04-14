import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ionicons/ionicons.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final _cityController = TextEditingController();
  String _cityName = '';
  double _temperature = 0;
  String _description = '';
  String? _iconUrl;
  String? _weather;
  double? _minTemp;
  double? _maxTemp;
  double? _humidity;
  double? _windSpeed;

  Future<void> getWeatherData() async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$_cityName&appid=62b56bca98de2c469978f73cb8abfde5&units=metric';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _temperature = data['main']['temp'];
        _description = data['weather'][0]['description'];
        _iconUrl =
            'http://openweathermap.org/img/w/${data['weather'][0]['icon']}.png';
        _minTemp = data['main']['temp_min'].toDouble();
        _maxTemp = data['main']['temp_max'].toDouble();
        _humidity = data['main']['humidity'].toDouble();
        _windSpeed = data['wind']['speed'].toDouble();
      });
    } else {
      throw Exception('Lỗi khi lấy dữ liệu thời tiết. Vui lòng thử lại sau.');
    }
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dự báo thời tiết'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
        hintText: "Nhập thành phố",
        hintStyle: const TextStyle(
            fontFamily: 'Gothic',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 1,
            color: Color(0xffC6CCD3)),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        prefixIcon: const Icon(Ionicons.rainy_outline),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffC6CCD3), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xff858A90), width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffD92128), width: 1)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffD92128), width: 1)),
      ),
              onSubmitted: (_) {
                setState(() {
                  _cityName = _cityController.text.trim();
                });
                getWeatherData();
              },
            ),
            
            if (_iconUrl != null)
              Image.network(
                _iconUrl!,
                height: 150.0,
                width: 150.0,
                fit: BoxFit.cover,
              ),
            if (_temperature != 0)
              Column(
                children: [
                  Text(
                    'Nhiệt độ tại $_cityName là $_temperature độ C',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            if (_minTemp != null && _maxTemp != null)
              Text(
                'Nhiệt độ thấp nhất: ${_minTemp!.toStringAsFixed(1)}\u00B0C, \nNhiệt độ cao nhất: ${_maxTemp!.toStringAsFixed(1)}\u00B0C',
                style: const TextStyle(fontSize: 18.0),
              ),
            if (_humidity != null && _windSpeed != null)
              Text(
                'Độ ẩm: ${_humidity!.toStringAsFixed(1)}%, Tốc độ gió: ${_windSpeed!.toStringAsFixed(1)}m/s',
                style: const TextStyle(fontSize: 18.0),
              ),
          ],
        ),
      ),
    );
  }
}
