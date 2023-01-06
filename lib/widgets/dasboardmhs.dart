import 'package:flutter/material.dart';
import 'package:mobile/providers/Store.dart';
import 'package:mobile/widgets/headerDrawer.dart';
import 'package:mobile/widgets/dosen_pembimbing.dart';
import 'package:mobile/widgets/profile_mhs.dart';
import 'package:mobile/widgets/judul_mhs.dart';
import 'package:mobile/widgets/jadwal_mhs.dart';
import 'package:mobile/widgets/ta_mhs.dart';
import 'package:mobile/widgets/proposal_mhs.dart';
import 'package:mobile/widgets/wisuda_mhs.dart';
import 'package:mobile/widgets/yudisium_mhs.dart';
import 'package:mobile/widgets/bimbingan_mhs.dart';
import 'package:mobile/widgets/jurnal_mhs.dart';
import 'package:mobile/widgets/loginPage.dart';
import 'package:mobile/widgets/contoh_upload_judul.dart';

class Dasboardmhs extends StatelessWidget {
  const Dasboardmhs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Dashboard Mahasiswa'),
        shadowColor: Colors.yellow[600],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.lock_person),
                title: Text("Profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const profile_mhs()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                onTap: () async {
                  await Store().setString('data', '');
                  Navigator.pushReplacementNamed(context, '/login');
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
            //1 (dospem)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const dosen_pembimbing()));
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
                      "Dosen Pembimbing",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //2 (judul)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const judul_mhs()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.bookmarks,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      "Judul",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //3 (bimbingan)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const bimbingan_mhs()));
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
                      "Bimbingan",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //4 (proposal)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const proposal_mhs()));
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
                      "Proposal",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //5 (TA)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ta_pnl()));
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
                      "Tugas Akhir",
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const jadwal_mhs()));
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
                      "Jadwal",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //7 (jurnal)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const jurnal_mhs()));
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
                      "Jurnal",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            //8 (yudis)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const yudisium_mhs()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.school_outlined,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      "Yudisium",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            // 9 (wisuda)
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const wisuda_mhs()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.school_sharp,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    Text(
                      "Wisuda",
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
