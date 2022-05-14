import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/components/openPageAnimation.dart';
import 'package:matrix_online_app/core/constants/color.dart';
import 'package:matrix_online_app/core/widgets/buttton.dart';
import 'package:matrix_online_app/core/widgets/text_formFild.dart';
import 'package:matrix_online_app/screens/profile/sign_up.dart';

class ProfileNoLogin extends StatelessWidget {
  const ProfileNoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 68.0),
              child: Text(
                'Matrix o`quvchisi bo`ling va tizimga kiring.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextInput(lable: 'Login'),
            const TextInput(lable: 'Password'),
            const SizedBox(
              height: 20,
            ),
            const ButtonInput(lable: 'Sign In'),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Agar acountingiz bo\'lmasa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      OpenPageAnimation(const SignUp()),
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: kBlue,
                  ),
                  child: const Text("Sign Up"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
