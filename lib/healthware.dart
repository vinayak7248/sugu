import 'package:flutter/material.dart';
import 'components/virtualAssist.dart';
import 'components/appDrawer.dart';
import 'components/other.dart';

class HealthWare extends StatefulWidget {
  @override
  _HealthWareState createState() => _HealthWareState();
}

class _HealthWareState extends State<HealthWare> {
  Color mainColor = Colors.blue;
  static const containerRadius = Radius.circular(30);

  // int _currentIndex = 0;

  // PageController _pageController = PageController(initialPage: 0);

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //     _pageController.animateToPage(
  //       index,
  //       duration: Duration(milliseconds: 200),
  //       curve: Curves.linear,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      drawer: AppDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "HealthWare",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27,
              ),
            ),
          ),
          leading: Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                  print("Avatar clicked");
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg"),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: IconButton(
                icon: Icon(Icons.more_vert),
                color: Colors.white,
                onPressed: () {
                  //TODO: More button
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex:
      //       _currentIndex, // this will be set when a new tab is tapped
      //   onTap: onTabTapped,
      //   type: BottomNavigationBarType.shifting,
      //   elevation: 5,
      //   selectedItemColor: mainColor,
      //   unselectedItemColor: Colors.grey,
      //   iconSize: 30,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.assistant),
      //       label: 'Virtual Assistant',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.mail),
      //       label: 'Other',
      //     ),
      //   ],
      // ),
      body: VirtualAssist(),
    );
  }
}
