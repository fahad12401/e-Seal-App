import 'package:e_seal_app/Screens/End_trip.dart';
import 'package:e_seal_app/Screens/Start_trip.dart';
import 'package:e_seal_app/Screens/Un_sync_Data.dart';
import 'package:e_seal_app/Widgets/Elevated_button.dart';
import 'package:flutter/material.dart';

import 'Register_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "e-Seal App",
          style: TextStyle(
              color: Color.fromARGB(255, 12, 15, 87),
              fontFamily: 'Calibri',
              fontSize: 30.0),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(11.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 170.0,
              width: double.infinity,
              child: Card(
                elevation: 1.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Recent Read e-Seal",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          fontFamily: 'Calibri',
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Container(
                        padding: EdgeInsets.only(top: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "e-Seal Code :",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black54,
                                fontFamily: 'Calibri',
                              ),
                            ),
                            Text(
                              "Container no. :",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black54,
                                fontFamily: 'Calibri',
                              ),
                            ),
                            Text(
                              "e-Seal State :",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black54,
                                fontFamily: 'Calibri',
                              ),
                            ),
                            Text(
                              "Read Time :",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black54,
                                fontFamily: 'Calibri',
                              ),
                            ),
                            Text(
                              "Trip Status :",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black54,
                                fontFamily: 'Calibri',
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        height: 8.0,
                        thickness: 1.5,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 310.0,
              width: double.infinity,
              child: Card(
                elevation: 1.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 20.0),
                  child: Column(
                    children: <Widget>[
                      Homebutton(
                          child: Text(
                            "Register Container",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                                color: Colors.white),
                          ),
                          ontapp: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ContainerRegistration()));
                          }),
                      SizedBox(
                        height: 9.0,
                      ),
                      Homebutton(
                          child: Text(
                            "Start Trip",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                                color: Colors.white),
                          ),
                          ontapp: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StartTrip()));
                          }),
                      SizedBox(
                        height: 9.0,
                      ),
                      Homebutton(
                          child: Text(
                            "End Trip",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                                color: Colors.white),
                          ),
                          ontapp: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EndTrip()));
                          }),
                      SizedBox(
                        height: 9.0,
                      ),
                      Homebutton(
                          child: Text(
                            "View Un-Sync Data",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                                color: Colors.white),
                          ),
                          ontapp: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UnsyncData()));
                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
