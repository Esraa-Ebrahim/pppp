import 'package:attendane_app/RegisrationPage.dart';
import 'package:attendane_app/register_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class start_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset(
                  "assetss/حضرني.png",
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            margin: EdgeInsets.only(right: 5.0),
            child: Image.asset(
              "assetss/who.png",
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5, right: 8, left: 8, top: 5),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0)),
              color: Color.fromRGBO(31, 122, 140, 1.0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationPage()));
              },
              child: Center(
                child: Text(
                  "Staff",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5, right: 8, left: 8, top: 5),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0)),
              color: Color.fromRGBO(31, 122, 140, 1.0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => register_student()));
              },
              child: Center(
                child: Text(
                  "Student",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          )
        ],
      ),
    ));
  }
}
