// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;


class UseApiServer {
  static const _api = "http://172.17.204.195:3001/";

  static Login(
      {required String username,
      required String password,
      required String route}) async {
    var _connect = _api + route; 
    Map<String, String> _data = {"username": username, "password": password};

    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );
    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
      return 404;
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }

  static forgotpass({required String email, required String route}) async {
    var _connect = _api + route;
    print(_connect);
    Map<String, String> _data = {"email": email};
    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );
    print(_response.statusCode);
    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 400) {
      return 400;
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
      return 404;
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }

  static otp(
      {required String email,
      required String otp,
      required String route}) async {
    var _connect = _api + route;
    Map<String, String> _data = {"email": email, "otp": otp};
    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );
    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 400) {
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
      return 404;
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }

  static register(
      {required String username,
      required email,
      required password,
      required String route}) async {
    var _connect = _api + route;
    print(username);
    print(_connect);
    print(email);
    print(password);

    Map<String, String> _data = {
      "username": username,
      "email": email,
      "password": password,
    };
    print(email);
    print(_connect);
    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );
    print(_response.statusCode);
    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 400) {
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
      return 404;
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }

  static checkmail({required email, required String route}) async {
    var _connect = _api + route;

    print(_connect);
    print(email);

    Map<String, String> _data = {
      "email": email,
    };
    print(email);
    print(_connect);
    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );

    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 400) {
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
      return 404;
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }

  static sendmail({required String email, required route}) async {
    var _connect = _api + route;

    Map<String, String> _data = {"email": email};

    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );
    print(email);
    print(_response.statusCode);

    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 201) {
      return 201;
    } else if (_response.statusCode == 400) {
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }

  static changepass({required String token, required String route}) async {
    var _connect = _api + route;

    Map<String, String> _data = {"token": token};

    print(_data);

    final _response = await http.post(
      Uri.parse(_connect),
      body: _data,
    );
    print(_response.statusCode);
    if (_response.statusCode == 200) {
      return 200;
    } else if (_response.statusCode == 201) {
      return 201;
    } else if (_response.statusCode == 400) {
    } else if (_response.statusCode == 401) {
      //Loi cu phap
      return 401;
    } else if (_response.statusCode == 403) {
      //Block
      return 403;
    } else if (_response.statusCode == 404) {
    } else if (_response.statusCode == 500) {
      //Internal Server Error
      return 500;
    } else {
      return 0;
    }
  }
}
