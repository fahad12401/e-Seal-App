import 'package:e_seal_app/Screens/Home.dart';
import 'package:flutter/material.dart';

class Homebutton extends HomeScreen {
  final Widget child;
  final GestureTapCallback ontapp;
  Homebutton({super.key, required this.child, required this.ontapp});

  @override
  State<Homebutton> createState() => _HomebuttonState();
}

class _HomebuttonState extends State<Homebutton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50.0,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 12, 15, 87),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onPressed: widget.ontapp,
          child: widget.child,
        ));
  }
}
