import 'package:flutter/material.dart';

class judul_mhs extends StatelessWidget {
  const judul_mhs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Judul'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 50,
          left: 20,
          right: 80,
          bottom: 30,
        ),
        child: Column(
          children: [
            //Judul 1
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Masukkan Judul 1",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.bookmark_add_sharp,
                  color: Colors.yellow[600],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            //Judul 2
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Masukkan Judul 2",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.bookmark_add_sharp,
                  color: Colors.yellow[600],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            //Judul 3
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Masukkan Judul 3",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.bookmark_add_sharp,
                  color: Colors.yellow[600],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 40)),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[600],
                minimumSize: Size(200, 55),
                shape: StadiumBorder(),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
              ),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
