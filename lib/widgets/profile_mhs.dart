import 'package:flutter/material.dart';

class profile_mhs extends StatelessWidget {
  const profile_mhs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Profile'),
        centerTitle: true,
      ),
    );
  }
}
