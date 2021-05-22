import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Doctor_profile.dart';
import 'color.dart';
import 'appointment.dart';

class Confirm_appintment extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Appointment()),
                );
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
                          child: Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: color().primaryColor(),
                                          width: 2)),
                                  child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Row(children: [
                                        Icon(
                                          Icons.info_outline,
                                          size: 23,
                                          color: color().primaryColor(),
                                        ),
                                        Text(
                                          "Info",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
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
              padding: EdgeInsets.only(top: 12, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: color().primaryColor(),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 22, right: 22, top: 10, bottom: 10),
                        child: new Container(
                            child: Column(children: [
                          Text(
                            "Sun",
                            style: GoogleFonts.inter(
                                color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "14",
                            style: GoogleFonts.inter(
                                color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "May",
                            style: GoogleFonts.inter(
                                color: Colors.white, fontSize: 18),
                          ),
                        ]))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("11:00 AM - 12:00 PM",
                                style: GoogleFonts.inter(fontSize: 21)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 7, left: 4),
                              child: Row(children: [
                                Text("Appointment price:",
                                    style: GoogleFonts.inter(fontSize: 15)),
                                Text(" \u{20B9}500",
                                    style: GoogleFonts.inter(
                                        fontSize: 15, color: Colors.green))
                              ]))
                        ]),
                  ),
                ]),
              )),
          Padding(
              padding: EdgeInsets.only(top: 12, left: 15, right: 15),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 8, left: 8, right: 240),
                            child: Text("Address",
                                style: GoogleFonts.inter(
                                    color: Colors.black, fontSize: 22)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4, left: 15),
                            child: Text(
                              "Shop no:08,Ramrajaya Society,near shinde bridge,warje,pune-411058",
                              style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontSize:
                                      17), // textAlign: TextAlign.justify,
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() async {
                                String googleUrl = "https://www.google.com/maps/search/?api=1&query=centurylink+field";
                                if (await canLaunch(googleUrl)) {
                                await launch(googleUrl);
                                } else {
                                throw 'Could not open the map.';
                                }
                              })
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 6, left: 250, bottom: 15),
                              child: Text("Direction",
                                  style: GoogleFonts.inter(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 18)),
                            ),
                          )
                        ],
                      )))),
          Padding(
            padding: EdgeInsets.only(top: 12, left: 15, right: 15),
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(194, 104, 232, 0.18),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  border: Border.all(
                    width: 0,
                    color: Color(0xFFC268E8),
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 0),
                          child: Icon(
                            Icons.info_outline,
                            size: 20,
                            color: color().primaryColor(),
                          ),
                        ),
                        Container(
                          child: Text(
                              " Please be 10 min prior to your slot time",
                              style: GoogleFonts.lato(
                                  color: Colors.grey, fontSize: 18),
                              textAlign: TextAlign.justify),
                        ),
                      ],
                    ))),
          ),
          Padding(
              padding: EdgeInsets.only(top: 240),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 29),
                      child: Container(
                        child: Text(
                          "Cancel Appointment",
                          style: GoogleFonts.inter(
                            color: color().primaryColor(),
                            fontSize: 17,
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 37),
                      child: Container(
                        decoration: BoxDecoration(
                          color: color().primaryColor(),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 30, right: 30),
                        child: Text(
                          "Book slot",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ))
                ],
              )),
        ]));
  }
}
