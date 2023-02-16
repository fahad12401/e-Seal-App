import 'package:e_seal_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _showinputfield = false;
  String? _selecteddropvalue;
  int? _selectedradio;
  TextEditingController _mannualurlcontroller = TextEditingController();

  @override
  void initState() {
    _selectedradio = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
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
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Text(
                    predefurl,
                    style: TextStyle(fontFamily: 'Calibri', fontSize: 20.0),
                  )),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Radio(
                              activeColor: Color.fromARGB(255, 12, 15, 87),
                              value: true,
                              groupValue: _showinputfield,
                              onChanged: (value) {
                                setState(() {
                                  _showinputfield = value!;
                                });
                              }),
                          Expanded(
                              child: Text(
                            "Mannual",
                            style: TextStyle(fontFamily: 'Calibri'),
                          )),
                          Radio(
                              activeColor: Color.fromARGB(255, 12, 15, 87),
                              value: false,
                              groupValue: _showinputfield,
                              onChanged: (value) {
                                setState(() {
                                  _showinputfield = value!;
                                });
                              }),
                          Expanded(
                              child: Text(
                            "Pre-Defined",
                            style: TextStyle(fontFamily: 'Calibri'),
                          ))
                        ],
                      ),
                      if (_showinputfield)
                        Container(
                          child: TextField(
                            controller: _mannualurlcontroller,
                            decoration: InputDecoration(
                                labelText: "Url",
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
                      if (!_showinputfield)
                        Padding(
                          padding: EdgeInsets.fromLTRB(13.0, 10.0, 13.0, 0.0),
                          child: SizedBox(
                            height: 60,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onSaved: (value) {
                                _selecteddropvalue = value;
                              },
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select an option';
                                }
                                return null;
                              },
                              items: [
                                DropdownMenuItem(
                                  child: Text("Primary"),
                                  value: 'Primary',
                                ),
                                DropdownMenuItem(
                                  child: Text("Secondary"),
                                  value: 'Secondary',
                                ),
                              ],
                              // items: <String>[
                              //   'Primary Server',
                              //   'Secondary Server'
                              // ].map<DropdownMenuItem<String>>((String value) {
                              //   return DropdownMenuItem<String>(
                              //     value: value,
                              //     child: Text(value),
                              //   );
                              // }).toList(),
                              onChanged: (String? value) {
                                _selecteddropvalue = value!;
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 15, 87),
                        ),
                        onPressed: () {
                          if (_showinputfield) {
                            predefurl = _mannualurlcontroller.text;
                          } else if (!_showinputfield) {
                            if (_selecteddropvalue == 'Primary') {
                              predefurl = "http://92.205.20.66:81/e-seal";
                            } else if (_selecteddropvalue == 'Secondary') {
                              predefurl = "http://ici.ddns.net:81/e-seal";
                            }
                          } else {
                            print("there is problem");
                          }
                        },
                        child: Text(
                          "Change Server Url",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Text(
                        "Version : 7",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                            fontFamily: 'Calibri',
                            fontSize: 18),
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

String predefurl = "http://92.205.20.66:81/e-seal/";
