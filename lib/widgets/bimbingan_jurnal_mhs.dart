import 'package:flutter/material.dart';

class bimbingan_jurnal_mhs extends StatelessWidget {
  const bimbingan_jurnal_mhs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Bimbingan Jurnal'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              tabs: [
                Tab(
                  text: "Pembimbing 1",
                ),
                Tab(
                  text: "Pembimbing 2",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
