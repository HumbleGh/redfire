import 'package:flutter/material.dart';
import 'package:redfire/core/constants/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: const Text("Continue with Google"),
      icon: Image.asset(Constants.googlePath),
    );
  }
}
