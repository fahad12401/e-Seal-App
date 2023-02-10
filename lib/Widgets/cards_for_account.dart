import 'package:e_seal_app/Screens/Menu_Screen.dart';
import 'package:flutter/material.dart';

class clickablecard extends MenuScreen {
  final GestureTapCallback ontapp;
  final Widget child;
  clickablecard({
    super.key,
    required this.ontapp,
    required this.child,
  });

  @override
  State<clickablecard> createState() => _clickablecardState();
}

class _clickablecardState extends State<clickablecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: InkWell(
        child: Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: widget.child,
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Color.fromARGB(255, 12, 15, 87),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          widget.ontapp;
        },
      ),
    );
  }
}
