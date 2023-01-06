import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile/providers/Store.dart';
import 'package:mobile/widgets/loginPage.dart';
import 'package:mobile/widgets/dasboardmhs.dart';
import 'package:mobile/widgets/dosDasboard.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MediaQuery(
        data: new MediaQueryData(),
        child: MaterialApp(
          title: 'Latihan Login',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => Home(),
            '/login': (context) => LoginPage(),
            '/mahasiswa': (context) => Dasboardmhs(),
            '/dosen': (context) => dosDasboard(),
          },
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _checkLogin(context);
    return Container();
  }

  Future _checkLogin(BuildContext context) async {
    // await Store().setString('data', '');
    var data = await Store().get('data');
    // print(data);
    if (data != null && data != '') {
      data = jsonDecode(data);
      print(data);
      var user = data['user'];
      if (user['level'] == 2) {
        Navigator.pushReplacementNamed(context, '/mahasiswa');
      } else if (user['level'] == 1) {
        Navigator.pushReplacementNamed(context, '/dosen');
      }
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
