import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'list_doctor_Appointment.dart';
import 'color.dart';

class Filter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Doctor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.orange,
      alignment: Alignment.center,
      child: child,
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSliderValue = 0;
  double _currentSliderValue1 = 0;
  double _currentSliderValue2 = 0;
  var time = new Map();
  int tcolor = 10;
  int dcolor = 10;

  @override
  Widget build(BuildContext context) {
    time[0] = "Morning";
    time[1] = "Afternoon";
    time[2] = "Evening";
    time[3] = "Night";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 16.0),
            alignment: Alignment.topCenter,
            height: 100,
            width: 392.7,
            decoration: BoxDecoration(
              color: color().primaryColor(),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              border: Border.all(
                width: 3,
                color: color().primaryColor(),
              ),
            ),
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: new ListTile(
                  leading: new Icon(
                    Icons.search,
                    color: color().primaryColor(),
                  ),
                  title: new TextField(
                    decoration: new InputDecoration(
                        hintText: 'Search Doctor Name',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: color().primaryColor())),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Date:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: color().primaryColor(),
                    fontSize: 22),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: new Container(
              height: 80.0,
              padding: EdgeInsets.only(left: 23),
              child: new ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: new List.generate(7, (int index) {
                  return InkWell(
                    onTap: () => {
                      setState(() {
                        dcolor = index;
                      })
                    },
                    child: new Card(
                      color: (dcolor != index)
                          ? color().secondaryColor()
                          : color().primaryColor(),
                      child: new Container(
                          alignment: Alignment.center,
                          width: 50.0,
                          height: 15.0,
                          child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(children: [
                                Text(
                                  DateFormat.E().format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: (dcolor == index)
                                          ? color().secondaryColor()
                                          : color().primaryColor(),
                                      fontSize: 12),
                                ),
                                Text(
                                  DateFormat.d().format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: (dcolor == index)
                                          ? color().secondaryColor()
                                          : color().primaryColor(),
                                      fontSize: 22),
                                ),
                                Text(
                                  DateFormat.MMM().format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: (dcolor == index)
                                          ? color().secondaryColor()
                                          : color().primaryColor(),
                                      fontSize: 12),
                                ),
                              ]))),
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Time:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: color().primaryColor(),
                    fontSize: 22),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: new Container(
              height: 80.0,
              padding: EdgeInsets.only(left: 23),
              child: new ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: new List.generate(4, (int index) {
                  return InkWell(
                    onTap: () => {
                      setState(() {
                        tcolor = index;
                      })
                    },
                    child: new Container(
                      width: 95,
                      height: 10,
                      child: Card(
                        color: (tcolor != index)
                            ? color().secondaryColor()
                            : color().primaryColor(),
                        child: new Container(
                            alignment: Alignment.center,
                            width: 50.0,
                            height: 15.0,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                time[index],
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: (tcolor == index)
                                        ? color().secondaryColor()
                                        : color().primaryColor(),
                                    fontSize: 18),
                              ),
                            )),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Experience:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: color().primaryColor(),
                    fontSize: 22),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Slider(
              activeColor: color().primaryColor(),
              value: _currentSliderValue,
              min: 0,
              max: 15,
              divisions: 5,
              label: ">" + _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Rating:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: color().primaryColor(),
                    fontSize: 22),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Slider(
              activeColor: color().primaryColor(),
              value: _currentSliderValue1,
              min: 0,
              max: 5,
              divisions: 5,
              label: ">" + _currentSliderValue1.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue1 = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Price:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: color().primaryColor(),
                    fontSize: 22),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Slider(
              activeColor: color().primaryColor(),
              value: _currentSliderValue2,
              min: 0,
              max: 1000,
              divisions: 5,
              label: "<" + _currentSliderValue2.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue2 = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 90, top: 22),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () => {
                      setState(() {
                        _currentSliderValue = 0;
                        _currentSliderValue1 = 0;
                        _currentSliderValue2 = 0;
                        time = new Map();
                        tcolor = 10;
                        dcolor = 10;
                      }),
                    },
                    child: new Container(
                      height: 50,
                      width: 89,
                      decoration: BoxDecoration(
                          color: color().secondaryColor(),
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: Text("Reset",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: color().primaryColor(),
                                  fontSize: 18))),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    setState(() {
                      //fun(_currentSliderValue, _currentSliderValue1, _currentSliderValue2, tcolor, dcolor)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list_appointment()),
                      );
                    }),
                  },
                  child: new Container(
                    height: 50,
                    width: 89,
                    decoration: BoxDecoration(
                        color: color().primaryColor(),
                        border: Border.all(
                          color: color().primaryColor(),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: Text("Apply",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: color().secondaryColor(),
                                fontSize: 18))),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
