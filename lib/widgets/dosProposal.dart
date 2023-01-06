import 'package:flutter/material.dart';

class dosProposal extends StatelessWidget {
  const dosProposal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Proposal'),
        centerTitle: true,
      ),
    );
  }
}
