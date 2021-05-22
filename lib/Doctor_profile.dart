import 'dart:async';
import 'dart:core';
import 'Conform_appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Rating.dart';
import 'color.dart';
import 'appointment.dart';

class Doctor_profile extends StatelessWidget {
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
  final _controller = ScrollController();
  String email="cs";
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 0),
      () => _controller.jumpTo(_controller.position.maxScrollExtent),
    );
    return Scaffold(
        body: CustomScrollView(
      controller: _controller,
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.purple,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Appointment()),
              );
            },
          ),
          backgroundColor: color().primaryColor(),
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage("assets/profile/vin.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFFF6F7F7),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Color(0xFFF6F7F7)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Vinayak Dhage',
                        style: TextStyle(fontFamily: 'playfair', fontSize: 25),
                      ),
                      Text(
                        'MBBS From XYZ',
                        style: TextStyle(
                            fontFamily: 'playfair',
                            fontSize: 20,
                            color: color().primaryColor()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
                          style: GoogleFonts.lato(
                              fontSize: 17, color: Colors.grey),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      'Heart Specilist',
                      style:
                          GoogleFonts.inter(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () => {
                      setState(() async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => Rating()));
                      })
                    },
                    child: Container(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 10, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(children: [
                      Text(
                        "4" + "/5",
                        style: TextStyle(
                            fontFamily: 'playfair',
                            fontSize: 30,
                            color: color().primaryColor()),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "79" + "  Rating",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.grey),
                          )),
                      Text(
                        "& " + "5" + " Reviews",
                        style:
                            GoogleFonts.lato(fontSize: 15, color: Colors.grey),
                      )
                    ]),
                  ),)
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 10, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(children: [
                      Text(
                        "5",
                        style: TextStyle(
                            fontFamily: 'playfair',
                            fontSize: 30,
                            color: color().primaryColor()),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Year of",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.grey),
                          )),
                      Text(
                        "Experience",
                        style:
                            GoogleFonts.lato(fontSize: 15, color: Colors.grey),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 10, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(children: [
                      Text(
                        "500+",
                        style: TextStyle(
                            fontFamily: 'playfair',
                            fontSize: 30,
                            color: color().primaryColor()),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Patient",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.grey),
                          )),
                      Text(
                        "Treated",
                        style:
                            GoogleFonts.lato(fontSize: 15, color: Colors.grey),
                      )
                    ]),
                  ),
                ),
              ],
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
                padding:
                    EdgeInsets.only(top: 12, left: 15, right: 15, bottom: 15),
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
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Icon(Icons.location_on,
                                    color: color().primaryColor(), size: 30),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("Address",
                                    style: GoogleFonts.inter(
                                        color: Colors.black, fontSize: 22)),
                              )
                            ]),
                            Padding(
                              padding: EdgeInsets.only(top: 4, left: 15),
                              child: Text(
                                    "Shop no:08,Ramrajaya Society,near shinde bridge,warje,pune-411058",
                                style: GoogleFonts.inter(
                                    color: Colors.grey,
                                    fontSize:
                                        15), // textAlign: TextAlign.justify,
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
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 150),
                                child: Row(children: [
                                  Icon(Icons.call,
                                      color: color().primaryColor(), size: 35),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("Phone Number",
                                        style: GoogleFonts.inter(
                                            color: Colors.black, fontSize: 22)),
                                  )
                                ])),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, bottom: 15),
                                child: Text(
                                  "    " + "+91 7350139388",
                                  style: GoogleFonts.inter(
                                      color: Colors.grey,
                                      fontSize:
                                          15), // textAlign: TextAlign.justify,
                                ),
                              ),
                              InkWell(
                                onTap: () => {
                                  setState(() async {
                                    String url = "tel:1234567";
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not open the map.';
                                    }
                                  })
                                },
                                child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 110, bottom: 15),
                                    child: Container(
                                        padding: EdgeInsets.only(top:5,bottom: 5,left: 15,right: 15),
                                        decoration: BoxDecoration(
                                          color: color().primaryColor(),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3)),
                                        ),
                                        child: Text("Call Now",
                                            style: GoogleFonts.inter(
                                                color: Colors.white,
                                                fontSize: 15)))),
                              )

                            ])
                          ],
                        )))),
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 23),
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
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 150),
                                child: Row(children: [
                                  Icon(Icons.email,
                                      color: color().primaryColor(), size: 35),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("Email Address",
                                        style: GoogleFonts.inter(
                                            color: Colors.black, fontSize: 22)),
                                  )
                                ])),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, bottom: 15),
                                child: Text(
                                  "    " + "Vinayakdhage1234@gmail.com",
                                  style: GoogleFonts.inter(
                                      color: Colors.grey,
                                      fontSize:
                                      15), // textAlign: TextAlign.justify,
                                ),
                              ),
                              InkWell(
                                onTap: () => {
                                  setState(() async {
                                    email="vinayakd.2503@gmail.com";
                                    String url = "mailto:"+email;
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not open the map.';
                                    }
                                  })
                                },
                                child:Padding(
                                  padding:
                                  EdgeInsets.only(left: 18, bottom: 15),
                                  child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: color().primaryColor(),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                      ),
                                      child: Text("Email Now",
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 15)))),)
                            ])
                          ],
                        )))),
          ]),
        ),
      ],
    ));
  }
}
