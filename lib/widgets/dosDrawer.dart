import 'package:flutter/material.dart';

class dosDrawer extends StatefulWidget {
  const dosDrawer({Key? key}) : super(key: key);
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<dosDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[600],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 90.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
