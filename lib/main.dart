import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/dosDasboard.dart';
import './dasboardmhs.dart';
import './dosDasboard.dart';

void main() {
  runApp(new MediaQuery(
    data: new MediaQueryData(), 
    child: MaterialApp(
      title: 'Latihan Login',
      home: HalamanUtama(),
      debugShowCheckedModeBanner: false,
    ))
  );
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  bool visibilityPass = false;
  bool _secureText = true;
  showhide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  final String myUser = '1';
  final String myPass = '1';

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 234, 164, 0),
            Colors.yellow,
          ],
        )),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                    ]),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(237, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                  child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.yellow[600],
                              fontSize: 35.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Please sign in to Continue",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 40)),
                          TextField(
                            controller: cUser,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Username",
                              labelStyle: TextStyle(
                                color: Colors.yellow[600],
                              ),
                              hintText: "Masukkan Username",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.yellow[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            obscureText: _secureText,
                            controller: cPass,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  color: Colors.yellow[600],
                                ),
                                hintText: "Masukkan Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(
                                  Icons.security_rounded,
                                  color: Colors.yellow[600],
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(_secureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    showhide();
                                  },
                                  color: Colors.yellow[600],
                                )),
                          ),
                          SizedBox(
                            height: 30.0,
                            width: 100,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              CekLogin(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellow[600],
                              minimumSize: Size(200, 55),
                              shape: StadiumBorder(),
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(20),
                            ),
                            child: Text('LOGIN'),
                          ),
                          Padding(padding: const EdgeInsets.only(top: 24.0))
                        ],
                      )),
                ))
          ],
        ),
      )),
    );
  }

  void CekLogin(BuildContext context) {
    //final String myUser = 'admin';
    //final String myPass = '12345';
    String mUser = '1';
    String mPas = '1';
    String dUser = '2';
    String dPas = '2';

    if (cUser.text == mUser && cPass.text == mPas) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Dasboardmhs(),
          ));
    } else if (cUser.text == dUser && cPass.text == dPas) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => dosDasboard(),
          ));
    }
  }
}
