import 'package:attendane_app/write_Excuse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:attendane_app/button.dart';

class request_Excuse extends StatefulWidget {
  @override
  State<request_Excuse> createState() => _request_ExcuseState();
}

class _request_ExcuseState extends State<request_Excuse> {
  Color grey = Color.fromRGBO(237, 237, 237, 1.0);

  Color petroleum = Color.fromRGBO(10, 63, 79, 1.0);
  String _selectedOption1 = 'Option 1';
  String _selectedOption2 = 'Option 2';
  String _selectedOption3 = 'Option 3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  margin: EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: Image.asset(
                    "assetss/حضرني.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 5.0),
              child: Image.asset(
                "assetss/text2.png",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              height: 250,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 7, left: 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(218, 221, 222,
                              1.0), //background color of dropdown button
                          border: Border.all(
                              color: Color.fromRGBO(31, 122, 139, 1.0),
                              width: 1.5), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              15), //border raiuds of dropdown button
                        ),
                        child: Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(5),
                            child: DropdownButton(
                              value: _selectedOption1,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedOption1 = newValue!;
                                });
                              },
                              items: [
                                'Option 1',
                                'Option 2',
                                'Option 3',
                                'Option 4',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(31, 122, 139, 1.0)),
                                  ),
                                );
                              }).toList(),
                              icon: Padding(
                                  //Icon at tail, arrow bottom is default icon
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                      Icons.arrow_drop_down_circle_rounded)),
                              iconEnabledColor: Color.fromRGBO(
                                  31, 122, 140, 1.0), //Icon color
                              style: TextStyle(
                                  //te
                                  color: Color.fromRGBO(
                                      31, 122, 140, 1.0), //Font color
                                  fontSize: 20 //font size on dropdown button
                                  ),

                              dropdownColor:
                                  Colors.white, //dropdown background color
                              underline: Container(), //remove underline
                              isExpanded: true, //make true to make width 100%
                            ))),
                    DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(218, 221, 222,
                              1.0), //background color of dropdown button
                          border: Border.all(
                              color: Color.fromRGBO(31, 122, 139, 1.0),
                              width: 1.5), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              15), //border raiuds of dropdown button
                        ),
                        child: Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(5),
                            child: DropdownButton(
                              value: _selectedOption2,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedOption2 = newValue!;
                                });
                              },
                              items: [
                                'Option 1',
                                'Option 2',
                                'Option 3',
                                'Option 4',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(31, 122, 139, 1.0)),
                                  ),
                                );
                              }).toList(),
                              icon: Padding(
                                  //Icon at tail, arrow bottom is default icon
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                      Icons.arrow_drop_down_circle_rounded)),
                              iconEnabledColor: Color.fromRGBO(
                                  31, 122, 140, 1.0), //Icon color
                              style: TextStyle(
                                  //te
                                  color: Color.fromRGBO(
                                      31, 122, 140, 1.0), //Font color
                                  fontSize: 20 //font size on dropdown button
                                  ),

                              dropdownColor:
                                  Colors.white, //dropdown background color
                              underline: Container(), //remove underline
                              isExpanded: true, //make true to make width 100%
                            ))),
                    DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(218, 221, 222,
                              1.0), //background color of dropdown button
                          border: Border.all(
                              color: Color.fromRGBO(31, 122, 139, 1.0),
                              width: 1.5), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              15), //border raiuds of dropdown button
                        ),
                        child: Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(5),
                            child: DropdownButton(
                              value: _selectedOption3,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedOption3 = newValue!;
                                });
                              },
                              items: [
                                'Option 1',
                                'Option 2',
                                'Option 3',
                                'Option 4',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(31, 122, 139, 1.0)),
                                  ),
                                );
                              }).toList(),
                              icon: Padding(
                                  //Icon at tail, arrow bottom is default icon
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                      Icons.arrow_drop_down_circle_rounded)),
                              iconEnabledColor: Color.fromRGBO(
                                  31, 122, 140, 1.0), //Icon color
                              style: TextStyle(
                                  //te
                                  color: Color.fromRGBO(
                                      31, 122, 140, 1.0), //Font color
                                  fontSize: 20 //font size on dropdown button
                                  ),

                              dropdownColor:
                                  Colors.white, //dropdown background color
                              underline: Container(), //remove underline
                              isExpanded: true, //make true to make width 100%
                            ))),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: const Color(0xff1F7A8C),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => write_Excuse()));
                },
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            )
          ],
        ),
      ),
    );
  }
}
