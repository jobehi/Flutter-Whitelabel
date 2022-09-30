import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static init() async {
    await dotenv.load(fileName: ".env");
  }

  static String envPrimaryColor = dotenv.env["BWZ_PRIMARY_COLOR"] ?? "";
  static String envSecondaryColor = dotenv.env["BWZ_SECONDARY_COLOR"] ?? "";
  static String envTertiaryColor = dotenv.env["BWZ_TERTIARY_COLOR"] ?? "";
  static bool envAllowSignUp = dotenv.env["BWZ_ALLOW_SIGNUP"] == "true";
  static String envFirebaseIos = dotenv.env["BWZ_FIREBASE_IOS"] ?? "";
  static String envFirebaseAndroid = dotenv.env["BWZ_FIREBASE_ANDROID"] ?? "";

  static String envAppId = dotenv.env["BWZ_APP_ID"] ?? "";
}
