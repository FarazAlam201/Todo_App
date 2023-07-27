import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/widgets/myButton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 122, bottom: 53),
              child: _displayHeadText("Login"),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _displayText("Username"),
                  // User name Text Field
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 25),
                    child: _showTextField(
                        "Enter your Username...", false, TextInputAction.next),
                  ),
                  // Password TextField
                  _displayText("Password"),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 69),
                    child: _showTextField(
                        "Enter your Password...", true, TextInputAction.done),
                  ),
                  MyButton(
                    btnName: 'Login',
                    callback: logintoNext,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //   FUNCTIONS

  TextField _showTextField(
      String TextHint, bool HiddenData, TextInputAction moveToNextTextField) {
    return TextField(
      textInputAction: moveToNextTextField,
      obscureText: HiddenData,
      cursorColor: const Color(0xff979797),
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: const Color(0xffFFFFFF),
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xff1D1D1D),
        filled: true,
        hintText: TextHint,
        hintStyle: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: const Color(0xffAFAFAF),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
      ),
    );
  }

  Text _displayText(String text) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xffFFFFFF)));
  }

  Text _displayHeadText(String text) {
    return Text('Login',
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            fontSize: 32,
            color: const Color(0xffFFFFFF)));
  }

  void logintoNext() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }
}
