import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class WeatherForecast {
  final double temperature;
  final String city;
  final String description;
  final String icon;

  WeatherForecast({
    required this.temperature,
    required this.city,
    required this.description,
    required this.icon,
  });

  factory WeatherForecast.fromJson(Map<String, dynamic> json) {
    final weather = json['weather'][0];
    final main = json['main'];
    return WeatherForecast(
      city: json['name'],
      temperature: main['temp'].toDouble(),
      description: weather['description'],
      icon: weather['icon'],
    );
  }

  static Future<WeatherForecast> getCurrentWeather({String? city}) async {
    late final http.Response response;

    if (city == null) {
      final position = await Geolocator.getCurrentPosition();
      final endpoint =
          'http://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=62b56bca98de2c469978f73cb8abfde5';
      response = await http.get(Uri.parse(endpoint));
    } else {
      final endpoint =
          'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=62b56bca98de2c469978f73cb8abfde5';
      response = await http.get(Uri.parse(endpoint));
    }

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return WeatherForecast.fromJson(json);
    } else {
      throw Exception('Lỗi khi lấy dữ liệu thời tiết. Vui lòng thử lại sau.');
    }
  }
}
