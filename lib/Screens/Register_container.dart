import 'package:flutter/material.dart';

class ContainerRegistration extends StatefulWidget {
  const ContainerRegistration({super.key});

  @override
  State<ContainerRegistration> createState() => _ContainerRegistrationState();
}

class _ContainerRegistrationState extends State<ContainerRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Registration",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
                fontSize: 23.0),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Seal-id",
                            hintText: "Enter Seal id",
                            contentPadding: EdgeInsets.all(10.0),
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
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                        height: 46.0,
                        width: 82.0,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 12, 15, 87)),
                            onPressed: () {},
                            child: Text(
                              "Get",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            )))
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 209, 204, 204),
                      hintText: "Container no.",
                      hintStyle: TextStyle(fontFamily: 'Calibri'),
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 12, 15, 87))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 14, 17, 107),
                            width: 2.0),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 209, 204, 204),
                      hintText: "E-Seal",
                      hintStyle: TextStyle(fontFamily: 'Calibri'),
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 12, 15, 87))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 14, 17, 107),
                            width: 2.0),
                      )),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 45.0,
                      width: 142.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 12, 15, 87)),
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 45.0,
                      width: 142.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 189, 150, 44)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
