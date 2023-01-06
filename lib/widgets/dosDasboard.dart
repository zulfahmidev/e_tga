import 'package:flutter/material.dart';
import 'package:mobile/widgets/dosBimbingan.dart';
import 'package:mobile/widgets/dosDrawer.dart';
import 'package:mobile/widgets/dosJadwal.dart';
import 'package:mobile/widgets/dosJurnal.dart';
import 'package:mobile/widgets/dosProposal.dart';
import 'package:mobile/widgets/dosTA.dart';
import 'package:mobile/widgets/dosPermintaanDos.dart';
import 'package:mobile/widgets/dosProfile.dart';
import 'package:mobile/widgets/loginPage.dart';

class dosDasboard extends StatelessWidget {
  const dosDasboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Dasboard Dosen'),
        shadowColor: Colors.yellow,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const dosDrawer(),
              ListTile(
                leading: const Icon(Icons.lock_person),
                title: Text("Profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const dosProfile()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Text("Log Out"),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            //1 (permintaan dospem)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const dosPermintaanDos()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Permintaan Dosen Pembimbing",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //2 (bimbingan)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const dosBimbingan()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Bimbingan",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //3 (proposal)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const dosProposal()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.newspaper,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Proposal",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //4 (tugas akhir)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dosTA()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.menu_book_sharp,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Tugas Akhir",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //5 (jurnal)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dosJurnal()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.library_books,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Jurnal",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //6 (jadwal)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dosJadwal()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.access_time,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Jadwal",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
