import 'package:flutter/material.dart';

import '../colors.dart';

class CourseCard extends StatefulWidget {
  final String imageUrl;
  final String course;
  final int nbCourses;

  const CourseCard({Key key, this.course, this.imageUrl, this.nbCourses})
      : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          top: 0.0,
          child: Container(
            height: 245.0,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          left: 15.0,
          child: Container(
            height: 70.0,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0), color: Colors.white),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.course,
                      style: TextStyle(
                          color: deepBlue,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w800)),
                  Text('${widget.nbCourses.toString()} Courses',
                    style: TextStyle(
                        color: deepGrey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          right: 25.0,
          child: Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
                color: Color(0xFF00AEE0),
                borderRadius: BorderRadius.circular(10.0)),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}
