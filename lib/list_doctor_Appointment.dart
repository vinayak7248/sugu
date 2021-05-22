import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'filter.dart';
import 'color.dart';
import 'appointment.dart';
import 'package:google_fonts/google_fonts.dart';

class list_appointment extends StatelessWidget {
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
      body: Column( children: [
        Container(
          alignment: Alignment.topCenter,
          height: 75,
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
            child: InkWell(
              onTap: () => {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Filter()),
                  );
                }),
              },
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: new ListTile(
                    leading: new Icon(
                      Icons.search,
                      color: color().primaryColor(),
                    ),
                    title: InkWell(
                      onTap: () => {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Filter()),
                          );
                        }),
                      },
                      child: new Text('Search Doctor',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                              fontSize: 20)),
                    )),
              ),
            ),
          ),
        ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Appointment()),
                          );
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
                                    Padding(
                                      padding: EdgeInsets.only(left: 40),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 28,
                                          color: color().primaryColor(),
                                        ),
                                      ),
                                    )
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
