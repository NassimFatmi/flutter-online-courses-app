import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:online_courses_app/colors.dart';
import 'package:online_courses_app/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (context) => LiquidSwipe(
            enableLoop: true,
                pages: <Container>[
                  Container(
                    padding: EdgeInsets.only(bottom: 60.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bg1.jpg'),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            'Free Online Courses from Top Universities',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Text(
                              'Our courses are avaible to start right away',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18.0)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bg2.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bg3.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              )),
    );
  }
}
