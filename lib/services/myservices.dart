import 'package:shared_preferences/shared_preferences.dart';

class MyServices {
  static late SharedPreferences sharedPreferences;

  static inti() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
