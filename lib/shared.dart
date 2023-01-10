import 'package:shared_preferences/shared_preferences.dart';

class Shared {
static String loginSharedPreference = "LOGGEDINKEY";

// save data

static Future<bool> saveLoginSharedPreference(islogin) async {
	SharedPreferences prefs = await SharedPreferences.getInstance();
	return await prefs.setBool(loginSharedPreference, islogin);
}

//fetch data

static Future getUserSharedPreferences() async {
	SharedPreferences preferences = await SharedPreferences.getInstance();
	return preferences.getBool(loginSharedPreference);
}
}
