import 'dart:developer';
import 'package:attendane_app/excuse_From.dart';
import 'package:attendane_app/home1.dart';
import 'package:attendane_app/home_Screen.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';

class emails extends StatefulWidget {
  const emails({Key? key}) : super(key: key);

  @override
  State<emails> createState() => _emailsState();
}

class _emailsState extends State<emails> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assetss/حضرني.png',
                ),
              ],
            ),
            const SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Emails',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Color.fromRGBO(10, 63, 79, 1.0),
                    )),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                    border: Border.all(
                      color: const Color(0xFF1f7a8c),
                      width: 1.5,
                    ),
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 3.0,
                      horizontal: 2.0,
                    ),
                    child: Icon(
                      Icons.mail_outline_rounded,
                      color: const Color(0xFF1f7a8c),
                      size: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                child: DottedBorder(
                  color: Color(0xff0a3f4f),
                  strokeWidth: 3,
                  dashPattern: [12, 5],
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildButton(
                            text: 'Email from person1',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person2',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person3',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person4',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person5',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person6',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person7',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person8',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person9',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          buildButton(
                            text: 'Email from person10',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => excuse_From()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

Widget buildButton({
  required String text,
  required VoidCallback onPressed,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        color: const Color(0xFF1f7a8c),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic),
        ),
        onPressed: onPressed,
      ),
    );
