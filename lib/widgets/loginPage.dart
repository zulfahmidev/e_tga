import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/providers/API.dart';
import 'package:mobile/providers/Store.dart';
import 'package:mobile/widgets/dosDasboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './dasboardmhs.dart';
import './dosDasboard.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;
  bool failedLogin = false;
  String _uError = '';
  String _pError = '';
  bool _isLoading = false;

  showhide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

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
                          if (failedLogin)
                            Container(
                              padding: EdgeInsets.all(16.0),
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.redAccent[100],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                'Username or password went wrong',
                                style: TextStyle(color: Colors.red[900]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          if (_isLoading)
                            Container(
                              padding: EdgeInsets.all(16.0),
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent[100],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                'Please Wait...',
                                style: TextStyle(color: Colors.blue[900]),
                                textAlign: TextAlign.center,
                              ),
                            ),
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
                              errorText: _uError,
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
                                errorText: _pError,
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
                            onPressed: () =>
                                {this._login(cUser.text, cPass.text)},
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

  Future _login(String username, String password) async {
    setState(() {
      _isLoading = true;

      _uError = '';
      _pError = '';
      failedLogin = false;
    });
    http.Response response = await API().post('/auth/login', {
      "username": username,
      "password": password,
    });
    var data = jsonDecode(response.body);
    if (data["status"] == 200) {
      var user = data['body']['user'];
      var prefs = await SharedPreferences.getInstance();
      prefs.setString('data', jsonEncode(data['body']));
      if (user['level'] == 2) {
        Navigator.pushReplacementNamed(context, '/mahasiswa');
      } else if (user['level'] == 1) {
        Navigator.pushReplacementNamed(context, '/dosen');
      }
    } else {
      if (data['status'] == 400) {
        var errors = data['body'];
        setState(() {
          _uError =
              (errors['username'].length > 0) ? errors['username'][0] : '';
          _pError =
              (errors['password'].length > 0) ? errors['password'][0] : '';
        });
      } else {
        setState(() {
          failedLogin = true;
        });
      }
    }
    setState(() {
      _isLoading = false;
    });
  }
}
