import 'package:cuidapetmobile/app/core/ui/cuida_pet_icons.dart';
import 'package:cuidapetmobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuidapetmobile/app/core/ui/extensions/theme_extension.dart';
import 'package:cuidapetmobile/app/core/ui/widgets/rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

class LoginRegisterButtons extends StatelessWidget {
  const LoginRegisterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        RoundedButtonWithIcon(
          color: const Color(0xFF4267B3),
          icon: CuidaPetIcons.facebook_1,
          width: .42.sw,
          title: 'Facebook',
          onTap: () {},
        ),
        RoundedButtonWithIcon(
          color: const Color(0xFFE15031),
          icon: CuidaPetIcons.google,
          width: .42.sw,
          title: 'Google',
          onTap: () {},
        ),
        RoundedButtonWithIcon(
          color: context.primaryColor,
          icon: Icons.mail,
          width: .42.sw,
          title: 'Cadastre-se',
          onTap: () => Navigator.pushNamed(context, '/auth/register'),
        ),
      ],
    );
  }
}
