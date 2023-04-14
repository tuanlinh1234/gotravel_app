import 'package:shared_preferences/shared_preferences.dart';

class UserPrefer {
  static const _email = "username";
  static SharedPreferences? preferences;
  static Future init() async =>
      preferences = await SharedPreferences.getInstance();

  // //! Login user
  static Future setEmail({required String value}) async =>
      await preferences!.setString(_email, value);
  static getEmail() => preferences!.getString(_email);
  static Future removeEmail() async => await preferences!.remove(_email);
}
