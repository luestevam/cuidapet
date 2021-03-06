import 'package:cuidapetmobile/app/core/helpers/environments.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class ApplicationStartConfig {
  Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _firebaseConfig();
    await _loadEnvs();
  }

  Future<void> _firebaseConfig() async => await Firebase.initializeApp();

  Future<void> _loadEnvs() => Environments.loadEnvs();
}
