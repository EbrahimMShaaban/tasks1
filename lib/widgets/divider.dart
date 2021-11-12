import 'package:flutter/material.dart';

class Dividerline extends StatelessWidget {
  double? rightend;
  double? liftend;

  Dividerline({this.liftend, this.rightend});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
      height: 30,
      endIndent: rightend,
      indent: liftend,
      thickness: .5,
    );
  }
}
