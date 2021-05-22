import 'dart:core';
import 'Doctor_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'Conform_appointment.dart';
import 'Doctor_profile.dart';
import 'color.dart';
import 'list_doctor_Appointment.dart';

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFFF6F7F7),
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

class _MyHomePageState extends State<MyHomePage> {
  int dcolor = 0;
  int tcolor = 0;
  int s_index = 100;
  double start_time = 9.00;
  var appoint = new Map();
  var slots = new Map();
  var time = new List();

  Slots() {
    appoint[0] = [time, slots];
    time = ["Morning", "Afternoon", "Evening", "Night"];
  }

  @override
  Widget build(BuildContext context) {
    Slots();
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => list_appointment()));
            },
          )),
      body: Column(children: [
        Container(
          height: 175,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0, color: Color(0xFFF6F7F7)),
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
                            image: new AssetImage("assets/profile/vin.jpeg"),
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
                                fontSize: 22, color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 69, top: 10),
                            child: Container(
                              width: 72,
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.only(left: 14),
                                child: Row(
                                  children: [
                                    Text(
                                      "4.3",
                                      style: GoogleFonts.roboto(
                                          fontSize: 20, color: Colors.white),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Doctor_profile()),
                            );
                          })
                        },
                        child:Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: color().primaryColor(), width: 2)),
                            child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Row(children: [
                                  Icon(
                                    Icons.info_outline,
                                    size: 28,
                                    color: color().primaryColor(),
                                  ),
                                  Text(
                                    "Info",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: color().primaryColor()),
                                  ),
                                ])))))
                  ],
                ),
              ),
              Container(
                height: 69,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 18, top: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  "Specialist",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "Cardiologist",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                )
                              ],
                            ))),
                    Padding(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  "Experience",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "5 Year",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                )
                              ],
                            ))),
                    Padding(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "Pune",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                )
                              ],
                            ))),
                    Padding(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  "Price",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "\u{20B9}500",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16, color: Colors.grey),
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
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: new Container(
              height: 90.0,
              padding: EdgeInsets.only(left: 8),
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
                          width: 60.0,
                          height: 22.0,
                          child: Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 7),
                              child: Column(children: [
                                Text(
                                  DateFormat.E().format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: GoogleFonts.inter(
                                      color: (dcolor == index)
                                          ? color().secondaryColor()
                                          : Colors.black,
                                      fontSize: 14),
                                ),
                                Text(
                                  DateFormat.d().format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: GoogleFonts.inter(
                                      color: (dcolor == index)
                                          ? color().secondaryColor()
                                          :  Colors.black,
                                      fontSize: 25),
                                ),
                                Text(
                                  DateFormat.MMM().format(DateTime.now()
                                      .add(Duration(days: index))),
                                  style: GoogleFonts.inter(
                                      color: (dcolor == index)
                                          ? color().secondaryColor()
                                          :  Colors.black,
                                      fontSize: 14),
                                ),
                              ]))),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          width: 400,
          child: Padding(
              padding: EdgeInsets.only(top: 10, left: 13, bottom: 10),
              child: Row(children: [
                Text("Slots Available:",
                    style: GoogleFonts.inter(fontSize: 18)),
                Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Container(
                          padding: EdgeInsets.only(right: 5),
                          height: 15,
                          width: 15,
                          color: Colors.redAccent,
                        ),
                      ),
                      Text("Not Available",
                          style: GoogleFonts.inter(fontSize: 12)),
                      Padding(
                        padding: EdgeInsets.only(right: 5,left: 5),
                        child: Container(
                          height: 15,
                          width: 15,
                          color: Colors.green,
                        ),
                      ),
                      Text("Booked", style: GoogleFonts.inter(fontSize: 12)),
                    ]))
              ])),
        ),
        Container(
            color: Colors.white,
            width: 400,
            height: 430,
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(scrollDirection: Axis.vertical, children: [
                Container(
                  height: 425,
                  width: 390,
                  color: Colors.white,
                  child: new ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: new List.generate(10, (int index) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 7, right: 7, bottom: 20),
                          child: Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 0, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: ExpansionTile(
                                title: Text("11:00 AM - 12:00 PM",
                                    style: GoogleFonts.inter(fontSize: 17)),
                                children: [
                                  Wrap(
                                      spacing: 15.0,
                                      children:
                                          new List.generate(3, (int index) {
                                        return InkWell(
                                          onTap: () => {
                                            setState(() {
                                              s_index = index;
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Confirm_appintment()),
                                              );
                                              s_index=100;
                                            })
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10, top: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: (s_index != index)
                                                    ? Colors.white
                                                    : color().primaryColor(),
                                                border: Border.all(
                                                    width: 1,
                                                    color: (s_index != index)
                                                        ? Colors.black
                                                        : color().primaryColor()),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5)),
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.all(9),
                                                  child: Text(
                                                    "11:00 AM-12:00 PM",
                                                    style: GoogleFonts.inter(
                                                        fontSize: 15,
                                                        color:
                                                            (s_index != index)
                                                                ? Colors.black
                                                                : Colors.white),
                                                  )),
                                            ),
                                          ),
                                        );
                                      })),
                                ]),
                          ),
                        );
                      })),
                ),
              ]),
            )),
      ]),
    );
  }
}
