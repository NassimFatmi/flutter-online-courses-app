import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final Color color;
  final String text;
  const Tag({Key key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        width: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: color,
        ),
        child: Center(child: Text(text, style: TextStyle(fontSize: 15.0))),
      ),
    );
  }
}
