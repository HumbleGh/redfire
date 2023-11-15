import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redfire/core/constants/constants.dart';
import 'package:redfire/features/auth/controller/auth_controller.dart';
import 'package:redfire/theme/app_layout.dart';
import 'package:redfire/theme/pallete.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key});

  // The Sign in function - Being created outside of the login button
  // to avoid rewriting it all over again when the design of the button changes.
  void signInWithGoogle(WidgetRef ref) {
    ref.read(authControllerProvider).sigInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton.icon(
      onPressed: () => signInWithGoogle(ref),
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
