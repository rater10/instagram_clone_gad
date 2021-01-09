import 'package:flutter/material.dart';
import 'package:instagram_clone_gad/src/containers/auth/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/presentation/home/home_page.dart';
import 'package:instagram_clone_gad/src/presentation/login/login_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
        builder: (BuildContext context, AppUser user) {
          if (user == null) {
            return const LoginPage();
          } else {
            return const HomePage();
          }
        }
    );
  }
}
