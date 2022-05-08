// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/components/NavBar.dart';
import 'package:provider/provider.dart';
import 'package:my_app/Screens/Inscription/inscription_screen.dart';
import 'package:my_app/Screens/Login/components/background.dart';
import 'package:my_app/Screens/Login/login_screen.dart';
import 'package:my_app/Screens/Welcome/welcome_screen.dart';
import 'package:my_app/color.dart';
import 'package:my_app/components/already_have_account.dart';
import 'package:my_app/components/roundedButton.dart';
import 'package:my_app/components/rounded_input_field.dart';
import 'package:my_app/components/rounded_password_field.dart';
import 'package:my_app/components/text_field_container.dart';

import '../../../services/auth.dart';

class body extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>();

  final myControllerEmail = TextEditingController();
  final myControllerMdp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
        child: Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Image.asset(
            "assets/images/run.png",
            height: size.height * 0.2,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "EMAIL",
            myController: myControllerEmail,
          ),
          RoundedPasswordField(
            myController: myControllerMdp,
          ),
          RoundedButton(
            text: "CONNEXION",
            onPressed: () {
              Map creds = {
                'email': myControllerEmail.text,
                'password': myControllerMdp.text,
              };
              if (_formKey.currentState!.validate()) {
                Provider.of<Auth>(context, listen: false).login(creds: creds);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return NavBarWidget();
                    },
                  ),
                );
              }
            },
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InscriptionScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
