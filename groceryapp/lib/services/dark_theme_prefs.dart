import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePrefs {
  static const THEME_STATUS = "THEMESTATUS";
  // creating a setter method
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  // getting the theme value 
  Future<bool> getTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? false;
  }
}
