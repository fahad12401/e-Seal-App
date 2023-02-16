import 'package:e_seal_app/Widgets/cards_for_account.dart';
import 'package:flutter/material.dart';

import 'Setting_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Account",
          style: TextStyle(
              color: Color.fromARGB(255, 12, 15, 87),
              fontFamily: 'Calibri',
              fontSize: 27.0),
        ),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 35.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_list_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Menu",
                          style: TextStyle(
                              fontFamily: 'Calibri', color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              clickablecard(
                  ontapp: () {},
                  child: Text(
                    "Download Locations",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 12, 15, 87),
                    ),
                  )),
              SizedBox(
                height: 5.0,
              ),
              clickablecard(
                  ontapp: () {},
                  child: Text(
                    "Backup",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 12, 15, 87)),
                  )),
              SizedBox(
                height: 5.0,
              ),
              clickablecard(
                  ontapp: () {},
                  child: Text(
                    "Update Application",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 12, 15, 87)),
                  )),
              SizedBox(
                height: 5.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 35.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontFamily: 'Calibri', color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 57.0,
                width: double.infinity,
                child: Card(
                  elevation: 1,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "First Name:",
                            style: TextStyle(
                              fontFamily: 'Calibri',
                              fontSize: 12.0,
                            ),
                          ),
                          //change
                          Text(
                            "Fahad Ali Khan",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
              ),
              Container(
                height: 57.0,
                width: double.infinity,
                child: Card(
                  elevation: 1,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Username:",
                            style: TextStyle(
                              fontFamily: 'Calibri',
                              fontSize: 12.0,
                            ),
                          ),
                          //change
                          Text(
                            "015412115",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
              ),
              Container(
                height: 57.0,
                width: double.infinity,
                child: Card(
                  elevation: 1,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Remote id:",
                            style: TextStyle(
                              fontFamily: 'Calibri',
                              fontSize: 12.0,
                            ),
                          ),
                          //change
                          Text(
                            "15451-6412165-551",
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 13.0,
              ),
              Container(
                width: double.infinity,
                height: 34.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Version 7",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.red,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 9.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                    width: 120.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 12, 15, 87)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.settings),
                            Text(
                              "Settings",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Calibri'),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 45.0,
                    width: 120.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.logout),
                            Text(
                              "Log Out",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Calibri'),
                            ),
                          ],
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
