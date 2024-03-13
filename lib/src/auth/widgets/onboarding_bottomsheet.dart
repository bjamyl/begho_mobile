import 'package:begho_mobile/src/auth/views/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';
import '../views/signup_screen.dart';
import '../widgets/auth_button.dart';

class OnboardingBottomSheet extends StatelessWidget {
  const OnboardingBottomSheet({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.45,
      color: Colors.white.withOpacity(0),
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.blue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Discover and buy special items anywhere, anytime!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Gain access to special, unique and rare items. Choose from over 6k+ items",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        color: Colors.white.withOpacity(0.7)),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const AuthButton(
                    title: 'Get started', route: SignupScreen.routeName),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: GoogleFonts.mulish(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(SigninScreen.routeName);
                      },
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.mulish(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

