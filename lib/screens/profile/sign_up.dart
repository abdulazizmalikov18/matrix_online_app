import 'package:flutter/material.dart';
import 'package:matrix_online_app/core/widgets/buttton.dart';
import 'package:matrix_online_app/core/widgets/text_formFild.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme:const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: size.height * 0.2 ),
          children: const [
            Center(
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 68.0),
              child: Text(
                'Matrix o`quvchisi bo`ling va tizimga kiring.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextInput(lable: 'Login'),
            TextInput(lable: 'Password'),
            SizedBox(
              height: 20,
            ),
            ButtonInput(lable: 'Sign Up'),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
