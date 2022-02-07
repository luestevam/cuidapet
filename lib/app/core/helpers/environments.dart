import 'dart:html';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '';

class Environments {
  Environments._();

  static String? param(String paramName) {
    if (kReleaseMode) {
      return RemoteConfig.instance.getString(paramName);
    } else {
      dotenv.env[paramName];
    }
  }

  static Future<void> loadEnvs() async {
    if (kReleaseMode) {
      await RemoteConfig.instance.fetchAndActivate();
    } else {
      await dotenv.load();
    }
  }
}
