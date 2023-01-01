import 'package:flutter/material.dart';
import 'package:mobile/bimbingan_ta_mhs.dart';
import 'package:mobile/bimbingan_jurnal_mhs.dart';
import 'package:mobile/bimbingan_mhs.dart';
import 'package:mobile/bimbingan_jurnal_mhs.dart';
import 'package:mobile/bimbingan_ta_mhs.dart';
import 'package:mobile/bimbingan_proposal_mhs.dart';

class bimbingan_mhs extends StatelessWidget {
  const bimbingan_mhs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Bimbingan'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //Bimbingan Proposal
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const bimbingan_proposal_mhs()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            minimumSize: Size(200, 55),
            shape: StadiumBorder(),
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ),
          child: Text('Bimbingan Proposal'),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),

        //Bimbingan TUGAS AKHIR
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const bimbingan_ta_mhs()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            minimumSize: Size(200, 55),
            shape: StadiumBorder(),
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ),
          child: Text('Bimbingan Tugas Akhir'),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        //Bimbingan Jurnal
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const bimbingan_jurnal_mhs()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            minimumSize: Size(200, 55),
            shape: StadiumBorder(),
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ),
          child: Text('Bimbingan Jurnal'),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
      ])),
    );
  }
}
