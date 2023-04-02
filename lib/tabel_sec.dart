import 'package:attendane_app/lec_absence.dart';
import 'package:attendane_app/today_absence.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class tabel_sec extends StatefulWidget {
  const tabel_sec({super.key});

  @override
  State<tabel_sec> createState() => _tabel_secState();
}

class _tabel_secState extends State<tabel_sec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
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
                      child: Center(
                        child: IconButton(
                            color: Colors.white,
                            iconSize: MediaQuery.of(context).size.height / 25,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Absence()));
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
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
              height: MediaQuery.of(context).size.height / 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: EdgeInsets.all(
                      MediaQuery.of(context).size.height / 120,
                    ),
                    margin: EdgeInsets.all(
                      MediaQuery.of(context).size.height / 80,
                    ),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.height / 5.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(31, 122, 140, 1.0),
                    ),
                    child: Text(
                      '   Year_name',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(
                      MediaQuery.of(context).size.height / 150,
                    ),
                    margin: EdgeInsets.all(
                      MediaQuery.of(context).size.height / 100,
                    ),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.height / 5.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(31, 122, 140, 1.0),
                    ),
                    child: Text(
                      ' Section_name',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    1: FlexColumnWidth(0.25),
                    0: FlexColumnWidth(0.90)
                  },
                  border: TableBorder.all(
                      color: Color.fromRGBO(31, 122, 140, 1.0),
                      style: BorderStyle.solid,
                      width: 2),
                  children: [
                    TableRow(children: [
                      Column(children: [
                        Container(
                          width: double.infinity,
                          color: Color.fromRGBO(31, 122, 140, 1.0),
                          height: MediaQuery.of(context).size.height / 15,
                          //
                          child: Center(
                            child: Text('Name',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ]),
                      Column(children: [
                        Container(
                          width: double.infinity,
                          color: Color.fromRGBO(31, 122, 140, 1.0),
                          height: MediaQuery.of(context).size.height / 15,
                          child: Center(
                            child: Text(
                              'Action',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                    TableRow(children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 60,
                        ),
                        child: Column(children: [Text('')]),
                      ),
                      Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assetss/icons8.png",
                            ))
                      ]),
                    ]),
                  ],
                ),
              ),
            ]),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / ,
            // ),
          ]),
        )));
  }
}
