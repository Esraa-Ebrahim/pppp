import 'package:attendane_app/attendance_page.dart';
import 'package:attendane_app/button.dart';
import 'package:attendane_app/emails.dart';
import 'package:attendane_app/home1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class excuse_From extends StatelessWidget {
  Color petroleum = Color.fromRGBO(10, 63, 79, 1.0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xFF1f7a8c),
                    radius: 25.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => emails()));
                      },
                    ),
                  ),
                  Image.asset(
                    'assetss/حضرني.png',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Expanded(
                child: Text(
                  "Excuse From...........",
                  style: TextStyle(
                    color: petroleum,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(15, 3, 30, "Yes"),
                    button(15, 3, 30, "No"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
