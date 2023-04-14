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
  List<WeatherData> _weatherDataList = [];

  Future<void> getWeeklyWeatherData() async {
    final url =
        'https://api.openweathermap.org/data/2.5/forecast?q=$_cityName&appid=62b56bca98de2c469978f73cb8abfde5&units=metric';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['list'];
      setState(() {
        _weatherDataList = List.generate(
          data.length,
          (index) => WeatherData.fromJson(data[index]),
        );
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
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xffC6CCD3), width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xff858A90), width: 1)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xffD92128), width: 1)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xffD92128), width: 1)),
              ),
              onSubmitted: (_) {
                setState(() {
                  _cityName = _cityController.text.trim();
                });
                getWeeklyWeatherData();
              },
            ),
            if (_weatherDataList.isNotEmpty)
              Column(
                children: [
                  Text(
                    'Dự báo thời tiết trong tuần tại $_cityName:',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _weatherDataList.length,
                      itemBuilder: (context, index) {
                        final data = _weatherDataList[index];
                        return Card(
                          elevation: 2,
                          margin: EdgeInsets.all(8),
                          child: ListTile(
                            leading: Image.network(
                              'https://openweathermap.org/img/w/${data.icon}.png',
                            ),
                            title: Text(
                              '${data.temperature}° C',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              '${data.description}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            trailing: Text(
                              '${data.dateTime}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  // Expanded(
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     itemCount: _weatherDataList.length,
                  //     itemBuilder: (context, index) {
                  //       final data = _weatherDataList[index];
                  //       return ListTile(
                  //         leading: Image.network(
                  //           'https://openweathermap.org/img/w/${data.icon}.png',
                  //         ),
                  //         title: Text('${data.temperature} độ C'),
                  //         subtitle: Text('${data.description}'),
                  //         trailing: Text('${data.dateTime}'),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            // Expanded(
            //     child: ListView(
            //   children: [
            //     if (_weatherDataList.isNotEmpty)
            //       Column(
            //         children: [
            //           Text(
            //             'Dự báo thời tiết trong tuần tại $_cityName:',
            //             style: const TextStyle(fontSize: 18),
            //           ),
            //           const SizedBox(height: 8),
            //           Expanded(
            //             child: ListView.builder(
            //               shrinkWrap: true,
            //               itemCount: _weatherDataList.length,
            //               itemBuilder: (context, index) {
            //                 final data = _weatherDataList[index];
            //                 return ListTile(
            //                   leading: Image.network(
            //                     'https://openweathermap.org/img/w/${data.icon}.png',
            //                   ),
            //                   title: Text('${data.temperature} độ C'),
            //                   subtitle: Text('${data.description}'),
            //                   trailing: Text('${data.dateTime}'),
            //                 );
            //               },
            //             ),
            //           ),
            //         ],
            //       ),
            //   ],
            // ))
          ],
        ),
      ),
    );
  }
}

class WeatherData {
  final DateTime dateTime;
  final double temperature;
  final String description;
  final String icon;

  WeatherData({
    required this.dateTime,
    required this.temperature,
    required this.description,
    required this.icon,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000);
    final weather = json['weather'][0];
    final main = json['main'];
    return WeatherData(
      dateTime: dateTime,
      temperature: main['temp'].toDouble(),
      description: weather['description'],
      icon: weather['icon'],
    );
  }
}
