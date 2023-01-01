import 'package:flutter/material.dart';

class dosProfile extends StatelessWidget {
  const dosProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Profile '),
        centerTitle: true,
      ),
    );
  }
}
