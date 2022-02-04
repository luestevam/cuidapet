import 'package:cuidapetmobile/app/core/ui/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: () => MaterialApp(
        initialRoute: '/auth/',
        builder: asuka.builder,
        navigatorObservers: [asuka.asukaHeroController],
        title: UiConfig.title,
        theme: UiConfig.theme,
      ).modular(),
    );
  }
}
