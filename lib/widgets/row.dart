import 'package:flutter/material.dart';
import 'package:tasks1/main.dart';

class RowWid extends StatefulWidget {
  String? text;

  RowWid({this.text});

  @override
  _RowWidState createState() => _RowWidState();
}

class _RowWidState extends State<RowWid> {
  int? nval;
  int? choice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Radio(
              toggleable: true,
              value: 1,
              groupValue: nval,
              onChanged: (value) {
                setState(() {
                  nval = value as int?;
                  switch (value) {
                    case 1:
                      choice = value;
                      break;
                    default:
                      choice = null;
                  }
                });
              },
            ),
            Text(
              widget.text!,
              style: styleboldg,
            ),
          ],
        ),
        // SizedBox(width: 20,),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/2.png",
            width: 39,
            color: Color.fromARGB(255, 82, 103, 104),
          ),
        ),
        Text('2 June 2020', style: styleboldb),
      ],
    );
  }
}
