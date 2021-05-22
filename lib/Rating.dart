import 'dart:async';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Doctor_profile.dart';
import 'color.dart';
import 'appointment.dart';

class Rating extends StatelessWidget {
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
            centerTitle: true,
            backgroundColor: color().primaryColor(),
            title: new Text("Reviews", style: TextStyle(fontSize: 25)),
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: color().secondaryColor()),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Doctor_profile()),
                );
              },
            )),
        body: Container(
            padding: const EdgeInsets.only(top: 10),
            color: Color(0xFFF6F7F7),
            child: new ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: new List.generate(5, (int index) {
                  return Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(
                        top: 0, bottom: 10, left: 15, right: 15),
                    child: Container(
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
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
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
                                            fontSize: 21, color: Colors.black),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 69, top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10,
                                                top: 5,
                                                bottom: 5,
                                                right: 7),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "4.3",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 18,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 12, right: 12, bottom: 13),
                            child: Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
                              style: GoogleFonts.lato(
                                  fontSize: 15, color: Colors.grey),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: InkWell(
          onTap: () => {
            setState(() async {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            })
          },
          child: Container(
            decoration: new BoxDecoration(
              color: color().primaryColor(),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.add,
              size: 45,
              color: Colors.white,
            ),
          ),
        ));
  }
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Add Ratting and Review'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.green,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your review here',
              ),
            ),)

        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}