import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redfire/core/constants/constants.dart';
import 'package:redfire/theme/app_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.logoPath,
          height: 40,
        ),
        actions: [TextButton(onPressed: () {}, child: const Text("Skip"))],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
        child: Column(
          children: [
            //Text
            Text(
              "Dive into anything",
              style: GoogleFonts.manrope(
                  fontSize: 20, fontWeight: FontWeight.w600),
            )
            //Image
            //Button
          ],
        ),
      ),
    );
  }
}
