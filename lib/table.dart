import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class table extends StatefulWidget {
  const table({super.key});

  @override
  State<table> createState() => _tableState();
}

class _tableState extends State<table> {
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
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: Image.asset(
                          "assetss/حضرني.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                'Calender',
                style: TextStyle(
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                  fontSize: MediaQuery.of(context).size.height / 20,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Table(
                  border: TableBorder.all(
                      color: Color.fromRGBO(31, 122, 140, 1.0),
                      style: BorderStyle.solid,
                      width: 2),
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(2),
                    4: FlexColumnWidth(2),
                    5: FlexColumnWidth(2),
                    6: FlexColumnWidth(2),
                  },
                  children: [
                    TableRow(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            color: Color.fromRGBO(31, 122, 140, 1.0),
                            child: Center(
                              child: Text(
                                'year',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Center(
                            child: Container(
                              child: Text(
                                'Saturday',
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 122, 140, 1.0),
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Center(
                            child: Container(
                              child: Text(
                                'sunday',
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 122, 140, 1.0),
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Center(
                            child: Container(
                              child: Text(
                                'monday',
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 122, 140, 1.0),
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Center(
                            child: Container(
                              child: Text(
                                'Tuesday',
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 122, 140, 1.0),
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Center(
                            child: Container(
                              child: Text(
                                'Wednesday',
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 122, 140, 1.0),
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                          child: TableCell(
                              child: Center(
                            child: Container(
                              child: Text(
                                'Thursday',
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 122, 140, 1.0),
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            color: Color.fromRGBO(31, 122, 140, 1.0),
                            child: TableCell(
                                child: Center(
                              child: Text('1',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            color: Color.fromRGBO(31, 122, 140, 1.0),
                            child: TableCell(
                                child: Center(
                              child: Text('2',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            color: Color.fromRGBO(31, 122, 140, 1.0),
                            child: TableCell(
                                child: Center(
                              child: Text('3s',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            color: Color.fromRGBO(31, 122, 140, 1.0),
                            child: TableCell(
                                child: Center(
                              child: Text('4',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            color: Color.fromRGBO(31, 122, 140, 1.0),
                            child: TableCell(
                                child: Center(
                              child: Text('5',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                        TableCell(child: Text('')),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
