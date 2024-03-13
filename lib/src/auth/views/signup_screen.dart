import 'package:begho_mobile/src/auth/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:begho_mobile/shared/layout.dart';
import '../../../constants.dart';
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const routeName = '/signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  var isLoading = false;

  //On submit of form
  Future<void> _submit() async {
    setState(() {
      isLoading = true;
    });

    final nv = Navigator.of(context);

    //Setting the values in the signupfields with the data from the controllers
    //Trying to sign up a user

    //Push signinscreenafter successfully creating account
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
            children: [
              Text(
                'Create Account',
                style: GoogleFonts.quicksand(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Fill your information below',
                style: GoogleFonts.mulish(
                  color: Colors.black54,
                ),
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
                height: 16,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Re-enter password',
                  style: GoogleFonts.mulish(color: Colors.black54),
                ),
              ),
              PasswordInput(passwordController: passwordConfirmController),
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
                          'Sign up',
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
        ),
      )),
    );
  }
}
