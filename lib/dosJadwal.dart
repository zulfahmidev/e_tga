import 'package:flutter/material.dart';

class dosJadwal extends StatelessWidget {
  const dosJadwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Jadwal'),
        centerTitle: true,
      ),
    );
  }
}
