import 'package:flutter/material.dart';

class UnsyncData extends StatelessWidget {
  const UnsyncData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Un-Sync Data",
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
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 12, 15, 87)),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 35.0,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Text(
                      "IMEI: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    ),
                    Text(
                      "#Change",
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 12, 15, 87)),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 35.0,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Username: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    ),
                    Text(
                      "#Change",
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 12, 15, 87)),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 35.0,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Total Register Containers: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    ),
                    Text(
                      "#Change",
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 12, 15, 87)),
                    borderRadius: BorderRadius.circular(10.0)),
                height: 35.0,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Total Read Trips: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    ),
                    Text(
                      "#Change",
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Calibri',
                          fontSize: 15.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 110.0,
                width: double.infinity,
                child: Card(
                  shadowColor: Color.fromARGB(255, 12, 15, 87),
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Container no. :",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                            Text(
                              "#change",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "e-Seal Code :",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                            Text(
                              "#change",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "e-Seal State :",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                            Text(
                              "#change",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Read Time :",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                            Text(
                              "#change",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Trip Status :",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                            Text(
                              "#change",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 15.0,
                                  color: Colors.black54),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
