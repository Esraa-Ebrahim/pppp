import 'package:attendane_app/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SectionInfo extends StatelessWidget {
  const SectionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10),
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
          color: sky,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(children: [
            Text(
              "Sat",
              style: TextStyle(
                color: petroleum,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "8:30->10:00",
              style: TextStyle(
                color: petroleum,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "IP",
              style: TextStyle(
                color: petroleum,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sec.5",
              style: TextStyle(
                color: petroleum,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Center(
                              child: Text(
                                'Students Are Recording Their Attendance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: petroleum,
                                ),
                              ),
                            ),
                            content: Container(
                              height: 100,
                              child: Center(
                                child: SpinKitPouringHourGlassRefined(
                                  color: nile,
                                  size: 50.0,
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              Center(
                                child: ElevatedButton(
                                  child: Text('End'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      petroleum,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("assetss/icons8-correct.png"),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Number of Attendees',
                                  style: TextStyle(
                                    color: Color.fromRGBO(10, 63, 79, 1.0),
                                  )),
                              content: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter Number',
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assetss/icons8-people-100.png",
                        ),
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
