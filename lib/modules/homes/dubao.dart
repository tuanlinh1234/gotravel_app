// import 'dart:convert';
// // ignore: depend_on_referenced_packages
// import 'package:intl/intl.dart';
// // ignore: depend_on_referenced_packages
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';



// class WeatherApp extends StatefulWidget {
//   const WeatherApp({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _WeatherAppState createState() => _WeatherAppState();
// }

// class _WeatherAppState extends State<WeatherApp> {
//   final cityController = TextEditingController();
//   Map<String, dynamic>? weatherData;

//   @override
//   void dispose() {
//     cityController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Weather App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Weather App'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(
//                 controller: cityController,
//                 decoration: const InputDecoration(hintText: 'Enter a city'),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 final weather = await getWeather(cityController.text);
//                 setState(() {
//                   weatherData = weather;
//                 });
//               },
//               child: const Text('Get weather'),
//             ),
//             if (weatherData != null) ...[
//               const SizedBox(height: 16.0),
//               Text(weatherData!['name'], style: const TextStyle(fontSize: 32.0)),
//               const SizedBox(height: 16.0),
//               Text(
//                   DateFormat.yMd().add_jm().format(DateTime.fromMillisecondsSinceEpoch(weatherData!['dt'] * 1000))),
//               const SizedBox(height: 16.0),
//               Text(
//                   '${(weatherData!['main']['temp'] - 273.15).toStringAsFixed(0)} °C'),
//               const SizedBox(height: 16.0),
//               Text(weatherData!['weather'][0]['main']),
//             ]
//           ],
//         ),
//       ),
//     );
//   }
// }
// Future<Map<String, dynamic>> getWeather(String city) async {
//   final response = await http.get(Uri.parse(
//       'https://api.openweathermap.org/data/2.5/weather?q=$city&appid={YOUR_API_KEY}'));
//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     throw Exception('Failed to load weather data');
//   }
// }