import 'package:healthware/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:healthware/Screens/Login/components/background.dart';
import 'package:healthware/Screens/Signup/signup_screen.dart';
import 'package:healthware/components/already_have_an_account_acheck.dart';
import 'package:healthware/components/rounded_button.dart';
import 'package:healthware/components/rounded_input_field.dart';
import 'package:healthware/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var email, pass;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                pass = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if (email == "123" && pass == "123") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Dashboard();
                      },
                    ),
                  );
                } else {
                  final snackBar = SnackBar(
                    content: Text('Invalid Email or Password!'),
                    action: SnackBarAction(
                      label: '',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
