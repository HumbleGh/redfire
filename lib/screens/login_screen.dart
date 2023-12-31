import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redfire/core/common/loader.dart';
import 'package:redfire/core/common/login_button.dart';
import 'package:redfire/core/constants/constants.dart';
import 'package:redfire/features/auth/controller/auth_controller.dart';
import 'package:redfire/theme/app_layout.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.logoPath,
          height: 40,
        ),
        centerTitle: true,
        actions: [TextButton(onPressed: () {}, child: const Text("Skip"))],
      ),
      body: isLoading
          ? const Loader()
          : Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Text
                  Text(
                    "Dive into anything",
                    style: GoogleFonts.manrope(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  //Image
                  Image.asset(
                    Constants.loginEmotePath,
                    height: AppLayout.getHeight(400),
                  ),
                  const Spacer(),
                  //Button
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
                    child: const LoginButton(),
                  )
                ],
              ),
            ),
    );
  }
}
