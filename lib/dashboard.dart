import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthware/Health_info.dart';
import 'package:healthware/Medicine_alarm.dart';
import 'package:healthware/virtual_doctor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'Reports.dart';
import 'color.dart';
import 'healthware.dart';
import 'package:flutter/material.dart';

import 'list_doctor_Appointment.dart';
import 'list_doctor_video.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _controller = ScrollController();
  var icons = new Map();
  var factor = new Map();

  int add() {
    icons[0] = ["assets/dash/1.jpg",];
    icons[1] = ["assets/dash/2.jpg",];
    icons[2] = ["assets/dash/3.jpg",];
    icons[3] = ["assets/dash/4.jpg",];
    icons[4] = ["assets/dash/5.jpg",];
    icons[5] = ["assets/dash/6.jpg",];

    factor[0] = ["assets/dash/sugar_level.jpg", "Sugar", "125" ," mg/dL"];
    factor[1] = [
      "assets/dash/water-drop.png",
      "Blood pressure",
      "75"," /115 mm Hg"
    ];
    factor[2] = ["assets/dash/heart.png", "Cholestrol", "125"," mg/dL"];
    factor[3] = ["assets/dash/bmi.jpg", "BMI", "24"," Kg/M2"];
    return icons.length;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            backgroundColor: color().primaryColor(),
            title: new Text("Dashboard", style: TextStyle(fontSize: 25)),
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.menu, color: color().secondaryColor()),
              onPressed: () {},
            )),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
              child: Wrap(
                  children: new List.generate(add(), (int index) {
                    return InkWell(
                        onTap: () => {
                          setState(() {
                            if(index==0){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => VirtualAssist()));
                            }
                            if(index==1){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => list_appointment()));
                            }
                            if(index==2){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => reports()));
                            }
                            if(index==3){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => list_video()));
                            }
                            if(index==4){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => health_info()));
                            }
                            if(index==5){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => medicine_alarm()));
                            }
                          })
                        },
                        child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Container(
                              height: 95,
                              width: 105,
                              padding: EdgeInsets.only(bottom: 10, top: 7),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(icons[index][0]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )));
                  })),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 5),
            child: Wrap(
                children: new List.generate(4, (int index) {
                  return Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 220,
                        width: 178,
                        padding: EdgeInsets.only(top: 10,left: 5,right: 5),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(factor[index][0],
                                  width: 40,
                                  height: 40,),
                                Text(factor[index][1],style: GoogleFonts.inter(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 18,
                                  color: Color(0xff808080),
                                ),),
                              ],
                            ),
                            Container(
                                height: 130,
                                child:SfRadialGauge(
                                    axes: <RadialAxis>[
                                      RadialAxis(minimum: 0, maximum: 150,
                                          ranges: <GaugeRange>[
                                            GaugeRange(startValue: 0, endValue: 50, color:Colors.green),
                                            GaugeRange(startValue: 50,endValue: 100,color: Colors.orange),
                                            GaugeRange(startValue: 100,endValue: 150,color: Colors.red)],
                                          pointers: <GaugePointer>[
                                            NeedlePointer(
                                                value: double.parse(factor[index][2]),
                                                lengthUnit: GaugeSizeUnit.factor,
                                                needleLength: 0.8,
                                                needleEndWidth:  11,
                                                gradient: const LinearGradient(
                                                    colors: <Color>[
                                                      Color(0xFFFF6B78), Color(0xFFFF6B78),
                                                      Color(0xFFE20A22), Color(0xFFE20A22)],
                                                    stops: <double>[0, 0.5, 0.5, 1]),
                                                needleColor: const Color(0xFFF67280),
                                                knobStyle: KnobStyle(
                                                    knobRadius: 0.08,
                                                    sizeUnit: GaugeSizeUnit.factor,
                                                    color: Colors.black)),
                                          ],
                                          annotations: <GaugeAnnotation>[
                                            GaugeAnnotation(widget: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.only(top: 80),
                                                child:Text(factor[index][2]+factor[index][3],style: GoogleFonts.inter(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 21,
                                                  color: Color(0xff808080),
                                                ),),
                                              ),),
                                                angle: 90, positionFactor: 0.5
                                            )]
                                      )])),
                          ],
                        ),
                      ));
                })),
          ),

        ]));;
  }
}
