import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.title, this.route = ''});
  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Text(
          title,
          style: GoogleFonts.mulish(
            color: AppColors.blackMain,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class GoogleSignin extends StatelessWidget {
  const GoogleSignin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), border: Border.all()),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/google.svg", width: 20),
          const SizedBox(
            width: 18,
          ),
          Text(
            "Continue with Google",
            style: GoogleFonts.mulish(
              color: AppColors.blackMain,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
