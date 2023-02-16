import 'package:flutter/material.dart';

class StartTrip extends StatefulWidget {
  const StartTrip({super.key});

  @override
  State<StartTrip> createState() => _StartTripState();
}

class _StartTripState extends State<StartTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Start Trip",
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
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "e-Seal Code",
                        hintStyle: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.grey,
                            fontSize: 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.5))),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Container No. : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Calibri',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("#change",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Calibri',
                          fontSize: 20.0,
                        ))
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Tag Status : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Calibri',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  child: Scrollbar(
                    thickness: 10.0,
                    scrollbarOrientation: ScrollbarOrientation.bottom,
                    radius: Radius.circular(10),
                    child: Card(
                      elevation: 3,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, right: 15.0, left: 15.0),
                            child: Container(
                              height: 360,
                              width: double.infinity,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SizedBox(
                            height: 40.0,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 12, 15, 87)),
                                onPressed: () {},
                                child: Text(
                                  "TAKE PHOTO",
                                  style: TextStyle(
                                      fontFamily: 'Calibri', fontSize: 20.0),
                                )),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SizedBox(
                            height: 40.0,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 12, 15, 87)),
                                onPressed: () {},
                                child: Text(
                                  "START TRIP",
                                  style: TextStyle(
                                      fontFamily: 'Calibri', fontSize: 20.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
