import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smartly_garden/auth/login_or_register.dart';
import 'package:smartly_garden/pages/home-pages.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged on
          if (snapshot.hasData) {
            return const HomePage();
          }

          // user is NOT logged on
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
