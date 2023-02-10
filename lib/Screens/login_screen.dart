import 'package:e_seal_app/Screens/Home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    TextField(
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
                    TextField(
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
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
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
                          onTap: () {},
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
