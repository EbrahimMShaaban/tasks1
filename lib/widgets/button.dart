import 'package:flutter/material.dart';

class Buttondown extends StatelessWidget {
  String? txt;

  Buttondown({this.txt});

  final TextStyle style = TextStyle(
    fontSize: 16,
    wordSpacing: 2,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          width: 170,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 82, 103, 104),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              txt!,
              style: style,
            ),
          ),
        ),
      ),
      // hoverColor: Colors.black,
    );
  }
}
