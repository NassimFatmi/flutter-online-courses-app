import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:online_courses_app/colors.dart';
import 'package:online_courses_app/widgets/card.dart';
import 'package:online_courses_app/widgets/tag.dart';

class Explorer extends StatefulWidget {
  @override
  _ExplorerState createState() => _ExplorerState();
}

class _ExplorerState extends State<Explorer> {
  int selectedTab = 0;
  List<Map> cards = [
    {'course': 'Astronomy', 'nbCourses': 28, 'url': 'assets/bg1.jpg'},
    {'course': 'Marketing', 'nbCourses': 10, 'url': 'assets/card2.jpg'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: deepBlue,
                      size: 40.0,
                    ),
                    onPressed: () {},
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/bg1.jpg'),
                    radius: 25.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20.0),
              child: Text(
                'Learn online\non your shedule',
                style: TextStyle(
                    fontSize: 30.0,
                    color: deepBlue,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0),
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Tag(
                    color: Color(0xFFCBEEF8),
                    text: 'History',
                  ),
                  Tag(
                    color: Color(0xFFFFF0CC),
                    text: 'Informatics',
                  ),
                  Tag(
                    color: Color(0xFFFFD8CC),
                    text: 'Science',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Popular',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: deepBlue),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all >',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w800,
                          color: deepGrey),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                child: Swiper(
                  itemCount: 2,
                  loop: false,
                  viewportFraction: 0.5,
                  scale: 0.7,
                  itemBuilder: (context, index) {
                    return CourseCard(
                      course: cards[index]['course'],
                      nbCourses: cards[index]['nbCourses'],
                      imageUrl: cards[index]['url'],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            selectedTab = value;
          });
        },
        currentIndex: selectedTab,
        elevation: 0.0,
        selectedItemColor: deepBlue,
        unselectedIconTheme: IconThemeData(color: deepGrey),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
