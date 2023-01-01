import 'package:flutter/material.dart';

class dosJurnal extends StatelessWidget {
  const dosJurnal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Jurnal'),
        centerTitle: true,
      ),
    );
  }
}
