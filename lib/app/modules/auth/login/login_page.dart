import 'package:cuidapetmobile/app/core/helpers/environments.dart';
import 'package:cuidapetmobile/app/core/helpers/logger.dart';
import 'package:cuidapetmobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapetmobile/app/core/ui/extensions/theme_extension.dart';
import 'package:cuidapetmobile/app/modules/auth/login/widget/LoginForm.dart';
import 'package:cuidapetmobile/app/modules/auth/login/widget/Login_register_buttons.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    LoggerImpl().warning('Carregando LoginPage');
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(top: 1.statusBarHeight + 30, left: 10, right: 10),
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: [
              Text(Environments.param('base_url') ?? 'Não Configurado'),
              Image.asset('assets/images/logo.png',
                  width: 150.w, fit: BoxFit.fill),
              const LoginForm(),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: context.primaryColor,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'ou',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: context.primaryColor),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: context.primaryColor,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const LoginRegisterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
