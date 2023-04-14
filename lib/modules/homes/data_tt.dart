import 'dart:convert';
import 'package:http/http.dart' as http;

const apiKey = '62b56bca98de2c469978f73cb8abfde5'; // Thay YOUR_API_KEY bằng API key của bạn
const apiEndpoint = 'https://api.openweathermap.org/data/2.5/weather';

Future<WeatherData> fetchWeatherData(String city) async {
  final url = Uri.parse('$apiEndpoint?q=$city&appid=$apiKey&units=metric');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return WeatherData(
      city: data['name'],
      temperature: data['main']['temp'].toDouble(),
      weather: data['weather'][0]['description'],
      humidity: data['main']['humidity'].toDouble(),
      windSpeed: data['wind']['speed'].toDouble(),
    );
  } else {
    throw Exception('Lỗi khi lấy dữ liệu thời tiết');
  }
}

class WeatherData {
  final String city;
  final double temperature;
  final String weather;
  final double humidity;
  final double windSpeed;
  WeatherData({
    required this.city,
    required this.temperature,
    required this.weather,
    required this.humidity,
    required this.windSpeed,
  });
}
