import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartly_garden/auth/auth.dart';
import 'package:smartly_garden/auth/login_or_register.dart';
import 'package:smartly_garden/firebase_options.dart';
import 'package:smartly_garden/pages/add_item_pages.dart';
import 'package:smartly_garden/pages/list_page.dart';
import 'package:smartly_garden/pages/statistics_page.dart';
import 'package:smartly_garden/pages/try_pages.dart';
import 'package:smartly_garden/pages/home-pages.dart';
import 'package:smartly_garden/pages/profile_page.dart';
import 'package:smartly_garden/pages/users_page.dart';
// import 'package:smartly_garden/theme/dark_theme.dart';
import 'package:smartly_garden/theme/light_theme.dart';
// import 'package:smartly_garden/pages/login_pages.dart';
// import 'package:smartly_garden/pages/register_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
        '/users_page': (context) => const UsersPage(),
        '/try_page': (context) => const TryPage(),
        '/add_item_page': (context) => const AddItemPage(),
        '/list_page': (context) => const ListPage(),
        '/statistics_page': (context) => const StatisticsPage(),
      },
    );
  }
}
