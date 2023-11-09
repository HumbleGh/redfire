import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redfire/core/constants/constants.dart';
import 'package:redfire/theme/app_layout.dart';
import 'package:redfire/theme/pallete.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(
        "Continue with Google",
        style: GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      icon: Image.asset(
        Constants.googlePath,
        width: AppLayout.getHeight(35),
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
          backgroundColor: Pallete.greyColor,
          minimumSize: Size(double.infinity, AppLayout.getHeight(50))),
    );
  }
}
