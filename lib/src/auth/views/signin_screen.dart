import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/auth_button.dart';

//Widget imports
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';
import 'package:begho_mobile/shared/layout.dart';
import '../../../constants.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static const routeName = '/signin';

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false;

  Future<void> _submit() async {
    setState(() {
      isLoading = true;
    });

    //Setting the values in the signupfields with the data from the controllers
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
          child: Layout(
              child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset("assets/icons/logo.svg"),
            Text(
              'Welcome back',
              style: GoogleFonts.quicksand(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: GoogleFonts.mulish(color: Colors.black54),
              ),
            ),
            EmailInput(emailController: emailController),
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                style: GoogleFonts.mulish(color: Colors.black54),
              ),
            ),
            PasswordInput(passwordController: passwordController),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: _submit,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.blue),
                padding: const EdgeInsets.symmetric(vertical: 18),
                alignment: Alignment.center,
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                        strokeCap: StrokeCap.round,
                      )
                    : Text(
                        'Sign in',
                        style: GoogleFonts.mulish(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 1,
                    width: size.width * 0.4,
                    color: Colors.black,
                  ),
                  const Text("OR"),
                  Container(
                    height: 1,
                    width: size.width * 0.4,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const GoogleSignin()
          ],
        ),
      ))),
    );
  }
}
