import 'dart:async';
import 'dart:convert' as convert;
import 'package:camera/camera.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Conform_appointment.dart';
import 'call.dart';

Future<void> Call() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras[1];

  runApp(
    MaterialApp(
      home: Wait(
        camera: firstCamera,
      ),
    ),
  );
}

class Wait extends StatefulWidget {
  final CameraDescription camera;

  const Wait({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  WaitState createState() => WaitState();
}

class WaitState extends State<Wait> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;
  final _channelController = TextEditingController();
  bool _validateError = false;
  final ClientRole _role = ClientRole.Broadcaster;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    onJoin();
    return Scaffold(
        body: Stack(children: [

          FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else
            {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
          Padding(
            padding: EdgeInsets.only(top:75),
            child:Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: new AssetImage(
                          "assets/profile/vin.jpeg"),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:115,top:15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(children: [
                    Text(
                      "Vinayak Dhage",
                      style: GoogleFonts.inter(
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 5),
                      child:Text(
                        "calling",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.white54),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child:Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RawMaterialButton(
                 // onPressed: _onToggleMute,
                  child: Icon(
                     Icons.mic,
                    color:  Colors.blueAccent ,
                    size: 20.0,
                  ),
                  shape: CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white ,
                  padding: const EdgeInsets.all(12.0),
                ),
                RawMaterialButton(
                  //onPressed: () => _onCallEnd(context),
                  child: Icon(
                    Icons.call_end,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  shape: CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.redAccent,
                  padding: const EdgeInsets.all(15.0),
                ),
                RawMaterialButton(
                  //onPressed: _onSwitchCamera,
                  child: Icon(
                    Icons.switch_camera,
                    color: Colors.blueAccent,
                    size: 20.0,
                  ),
                  shape: CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(12.0),
                )
              ],
            ),
          ),),
    ]));
  }

  Future<void> onJoin() async {
    // update input validation
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_channelController.text.isNotEmpty) {
      String APP_ID, Token, channel ,uid;
      var url = 'http://18.130.115.246:80/call/';
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        APP_ID = jsonResponse['app_id'];
        Token = jsonResponse['token1'];
        channel = jsonResponse['channelName'];
        uid = jsonResponse['uid1'];
      } else {
        _validateError = false;
      }
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(
            channelName: channel,
            app_id:APP_ID,
            token: Token,
            u_id:uid,
          ),
        ),
      );
    }
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }
}

