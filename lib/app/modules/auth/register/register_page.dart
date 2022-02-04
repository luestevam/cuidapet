import 'package:cuidapetmobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapetmobile/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapetmobile/app/core/ui/widgets/cuidapet_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastra-se'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(top: 1.statusBarHeight + 30, left: 10, right: 10),
          width: 1.sw,
          height: 1.sh - 1.statusBarHeight - kToolbarHeight,
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 150.w,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 10),
              CuidapetTextFormField(label: 'Nome'),
              const SizedBox(height: 10),
              CuidapetTextFormField(label: 'Telefone'),
              const SizedBox(height: 10),
              CuidapetTextFormField(label: 'Login'),
              const SizedBox(height: 10),
              CuidapetTextFormField(
                label: 'Senha',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              CuidapetTextFormField(
                label: 'Confirma Senha',
                obscureText: true,
              ),
              CuidapetDefaultButton(
                label: 'Cadastrar',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
