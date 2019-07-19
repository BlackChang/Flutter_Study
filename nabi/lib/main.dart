import 'package:flutter/material.dart';
import './signIn.dart';
import './serviceAgreement.dart';
import './serviceAgrInfo.dart';
import './personalInfo.dart';
import './signUpByEmail.dart';

void main() => runApp(NabiApp());

class NabiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nabi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context)=>SignIn(),
        '/serviceAgr': (context)=>ServiceAgr(),
        '/serviceAgrInfo': (context)=>ServiceAgrInfo(),
        '/personalInfo': (context)=>PersonalInfo(),
        '/signUpByEmail': (context)=>SignUpByEmail(),
      }
    );
  }
}


