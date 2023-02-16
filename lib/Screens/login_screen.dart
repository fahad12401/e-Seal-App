import 'dart:convert';
import 'package:e_seal_app/Module/json_response.dart';
import 'package:e_seal_app/Screens/Setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Start_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String usingurl = "$predefurl/Account/AndroidLogin";
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  String _errortext = "";
  JsonResponse jsonResponse = JsonResponse();

  Future login() async {
    try {
      final String username = _usernamecontroller.text;
      final String password = _passwordcontroller.text;

      final response = await http.post(Uri.parse(usingurl),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({'UserName': username, 'Password': password}));
      final Map<String, dynamic> data = jsonDecode(response.body);
      final user = JsonResponse.fromJson(data);
      if (response.statusCode == 200) {
        print(response.body);
        if (user.status == 1) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => StartScreen()));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Incorrect Password or Username"),
            backgroundColor: Colors.red,
          ));
        }
      } else {
        _errortext = jsonDecode(response.body)['message'];
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(_errortext),
          backgroundColor: Colors.red,
        ));
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180.0, // default is 56
        toolbarOpacity: 0.5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0)),
        ),
        elevation: 1,
        backgroundColor: Color.fromARGB(255, 12, 15, 87),
        title: Center(
          child: Image.asset(
            "assets/CustomLogo.jpg",
            height: 200,
            width: 200,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(11.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    "e-Seal App",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 35.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 25.0, 18.0, 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _usernamecontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter Username";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                labelText: "Username",
                                hintText: "Enter Your Username",
                                hintStyle: TextStyle(fontFamily: 'Calibri'),
                                labelStyle: TextStyle(
                                    fontFamily: 'Calibri',
                                    color: Color.fromARGB(255, 12, 15, 87)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 12, 15, 87),
                                        width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 14, 17, 107),
                                      width: 2.0),
                                )),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter Password";
                              }
                              return null;
                            },
                            obscureText: true,
                            controller: _passwordcontroller,
                            decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Enter Your Password",
                                hintStyle: TextStyle(fontFamily: 'Calibri'),
                                labelStyle: TextStyle(
                                    fontFamily: 'Calibri',
                                    color: Color.fromARGB(255, 12, 15, 87)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 12, 15, 87),
                                        width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 14, 17, 107),
                                      width: 2.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            login();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 12, 15, 87),
                            fixedSize: Size(180, 50)),
                        child: const Text(
                          "Sign in",
                          style:
                              TextStyle(fontFamily: 'Calibri', fontSize: 25.0),
                        )),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: ClipRect(
                            child: Image.asset(
                              'assets/setting.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
