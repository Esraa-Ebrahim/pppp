import 'package:attendane_app/home_Screen.dart';
import 'package:attendane_app/tabel_sec.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Absence extends StatefulWidget {
  const Absence({super.key});

  @override
  State<Absence> createState() => _AbsenceState();
}

class _AbsenceState extends State<Absence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height / 20,
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.height / 10,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(31, 122, 140, 1.0),
                      child: IconButton(
                          color: Colors.white,
                          iconSize: MediaQuery.of(context).size.height / 25,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home_Screen()));
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 2.5,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 50,
                    ),
                    child: Image.asset(
                      "assetss/حضرني.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(31, 122, 140, 1.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabel_sec()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 2.2,
                      child: Text(
                        'year/sectionNumber                        xx/xx/xxxx',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            /* Container(
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                color: Color.fromRGBO(202, 240, 248, 1.0),
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons8-contact-us-48.png",
                      width: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons8-calendar-48.png",
                      width: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons8-home-48.png",
                      width: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons8-event-64.png",
                      width: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons8-settings-48.png",
                      width: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      )),
    );
  }
}
