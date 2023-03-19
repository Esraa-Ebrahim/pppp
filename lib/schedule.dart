import 'package:attendane_app/Shared/SectionInfo.dart';
import 'package:attendane_app/home_Screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Color petroleum = Color.fromRGBO(10, 63, 79, 1.0);
Color sky = Color.fromRGBO(202, 240, 248, 1.0);
Color nile = Color.fromRGBO(31, 122, 140, 1.0);

class schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assetss/حضرني.png',
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          Center(
            child: Text('Schedule',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: petroleum,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              padding: EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: petroleum, width: 0.5, style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(167, 158, 158, 158),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      color: petroleum,
                    ),
                    width: 65,
                    alignment: Alignment.center,
                    child: Text('G1',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Container(
                    // height: 200,
                    width: 250,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              padding: EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: petroleum, width: 0.5, style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(167, 158, 158, 158),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      color: petroleum,
                    ),
                    width: 65,
                    alignment: Alignment.center,
                    child: Text('G2',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Container(
                    // height: 200,
                    width: 250,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              padding: EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: petroleum, width: 0.5, style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(167, 158, 158, 158),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      color: petroleum,
                    ),
                    width: 65,
                    alignment: Alignment.center,
                    child: Text('G3',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Container(
                    // height: 200,
                    width: 250,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              padding: EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: petroleum, width: 0.5, style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(167, 158, 158, 158),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      color: petroleum,
                    ),
                    width: 65,
                    alignment: Alignment.center,
                    child: Text('G4',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Container(
                    // height: 200,
                    width: 250,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                          SectionInfo(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
