import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthware/wait_video_call.dart';
import 'Doctor_profile.dart';
import 'color.dart';
import 'package:google_fonts/google_fonts.dart';

class list_video extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color(0xFFF6F7F7)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var category = new Map();
  var category_name = new List();
  double _currentSliderValue = 0;
  double _currentSliderValue1 = 0;

  int add() {
    category[0] = new Image(
        image: new AssetImage("assets/category/cat_1.jpg"),
        width: 10,
        height: 10);
    category[1] = new Image(
        image: new AssetImage("assets/category/cat_2.png"),
        width: 10,
        height: 10);
    category[2] = new Image(
        image: new AssetImage("assets/category/cat_3.png"),
        width: 10,
        height: 10);
    category[3] = new Image(
        image: new AssetImage("assets/category/cat_4.jpg"),
        width: 10,
        height: 10);
    category[4] = new Image(
        image: new AssetImage("assets/category/cat_5.jpg"),
        width: 10,
        height: 10);
    category[5] = new Image(
        image: new AssetImage("assets/category/cat_6.png"),
        width: 10,
        height: 10);
    category[6] = new Image(
        image: new AssetImage("assets/category/cat_7.jpg"),
        width: 10,
        height: 10);
    category[7] = new Image(
        image: new AssetImage("assets/category/cat_8.jpg"),
        width: 10,
        height: 10);
    category[8] = new Image(
        image: new AssetImage("assets/category/cat_9.jpg"),
        width: 10,
        height: 10);
    category[9] = new Image(
        image: new AssetImage("assets/category/cat_10.jpg"),
        width: 10,
        height: 10);

    category_name.add("Heart");
    category_name.add("Dental");
    category_name.add("Lungs");
    category_name.add("Kidney");
    category_name.add("ENT");
    category_name.add("Brain");
    category_name.add("Stomach");
    category_name.add("Eye");
    category_name.add("Bone");
    category_name.add("Gynac");

    return category.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          backgroundColor: color().primaryColor(),
          title: new Text("Doctor", style: TextStyle(fontSize: 32)),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: color().secondaryColor()),
            onPressed: () {},
          )),
      body: ListView(children: [
        Container(
            color: color().primaryColor(),
            child: new Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 10, top: 10, bottom: 10),
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: color().primaryColor()),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ExpansionTile(
                  backgroundColor: color().primaryColor(),
                  title: new Padding(
                    padding:
                    const EdgeInsets.only(right: 0, left: 0, bottom: 5),
                    child: new Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(children: [
                            new Icon(
                              Icons.search,
                              size: 29,
                              color: color().primaryColor(),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: TextField(
                                  decoration: new InputDecoration(
                                      hintText: 'Search Doctor Name',
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ),
                          ]),
                        )),
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0, color: Color(0xFFF6F7F7)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 330,
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 0, right: 10, left: 20),
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
                          padding: EdgeInsets.only(
                              top: 20, bottom: 0, right: 10, left: 20),
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
                            label:
                            ">" + _currentSliderValue1.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue1 = value;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
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
                                      MaterialPageRoute(
                                          builder: (context) => list_video()),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
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
                  ],
                ),
              ),
            )),
        Container(
            padding: const EdgeInsets.only(top: 9),
            child: Container(
              height: 85.0,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 8, right: 8),
              child: new ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: new List.generate(add(), (int index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(left: 5, right: 5, top: 4, bottom: 3),
                    child: new Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: new Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            )),
                        width: 65.0,
                        height: 25.0,
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 85,
                              child: category[index],
                            ),
                            Text(
                              category_name[index],
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            color: Color(0xFFF6F7F7),
            height: 582,
            child: new ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: new List.generate(
                  5,
                      (int index) {
                    return InkWell(
                      onTap: () => {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Doctor_profile()),);
                        }),
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            top: 0, bottom: 10, left: 15, right: 15),
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                            Border.all(width: 0, color: Color(0xFFF6F7F7)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: new AssetImage(
                                                "assets/profile/vin.jpeg"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(children: [
                                          Text(
                                            "Vinayak Dhage",
                                            style: GoogleFonts.inter(
                                                fontSize: 22,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 69, top: 10),
                                            child: Container(
                                              width: 72,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(20))),
                                              child: Padding(
                                                padding:
                                                EdgeInsets.only(left: 14),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "4.3",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                    ),
                                                    Icon(
                                                      Icons.star_border,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                InkWell(
                                  onTap: () => {
                                    setState(() {
                                      Call();
                                    })
                                  },
                                  child:Padding(
                                      padding: EdgeInsets.only(left:30,top: 15),
                                      child:Container(
                                        height: 45,
                                        width: 45,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(bottom: 7),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/dash/chat.png"),
                                            fit: BoxFit.cover,
                                          ),),
                                        child: Icon(
                                          Icons.videocam,
                                          size: 28,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              Container(
                                height: 69,
                                child: Row(
                                  children: [
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 15, top: 10),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Specialist",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 6),
                                                  child: Text(
                                                    "Cardiologist",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                )
                                              ],
                                            ))),
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 20, top: 10),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Experience",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 6),
                                                  child: Text(
                                                    "5 Year",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                )
                                              ],
                                            ))),
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 20, top: 10),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Location",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 6),
                                                  child: Text(
                                                    "Pune",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                )
                                              ],
                                            ))),
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 20, top: 10),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Price",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 6),
                                                  child: Text(
                                                    "\u{20B9}500",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                )
                                              ],
                                            )))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ),
        ]),
      ]),
    );
  }


}
