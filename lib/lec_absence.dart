import 'package:attendane_app/home_Screen.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class page_lec extends StatefulWidget {
  const page_lec({super.key});

  @override
  State<page_lec> createState() => _page_lecState();
}

class _page_lecState extends State<page_lec> {
  String selectedOption1 = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                      child: Center(
                        child: IconButton(
                            color: Colors.white,
                            iconSize: MediaQuery.of(context).size.height / 25,
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => yourSubjects()));
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
              height: MediaQuery.of(context).size.height / 30,
            ),
            Text(
              'Lecuture Absence',
              style: TextStyle(
                color: Color.fromRGBO(31, 122, 140, 1.0),
                fontSize: MediaQuery.of(context).size.height / 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 15,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(31, 122, 140, 1.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Your Name',
                    hintStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: ((value) {
                  print(value);
                }),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 15,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Your Code',
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: ((value) {
                    print(value);
                  }),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 15,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: DropdownButton(
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
                        style:
                            TextStyle(color: Color.fromRGBO(31, 122, 140, 1.0)),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption1 = newValue!;
                    });
                  },
                  value: selectedOption1,
                  icon: Padding(
                      //Icon at tail, arrow bottom is default icon
                      padding: EdgeInsets.only(
                        right: 20,
                        top: MediaQuery.of(context).size.height / 95,
                      ),
                      child: Icon(Icons.arrow_drop_down_circle_rounded)),
                  iconSize: MediaQuery.of(context).size.height / 20,
                  iconEnabledColor: Colors.white, //Icon color
                  style: TextStyle(
                    //te
                    color: Colors.white, //Font color
                    fontSize: MediaQuery.of(context).size.height /
                        35, //font size on dropdown button
                  ),

                  dropdownColor: Colors.white, //dropdown background color
                  underline: Container(), //remove underline
                  isExpanded: true,
                  //make true to make width 100%
                )),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 15,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: DropdownButton(
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
                        style:
                            TextStyle(color: Color.fromRGBO(31, 122, 140, 1.0)),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption1 = newValue!;
                    });
                  },
                  value: selectedOption1,
                  icon: Padding(
                      //Icon at tail, arrow bottom is default icon
                      padding: EdgeInsets.only(
                        right: 20,
                        top: MediaQuery.of(context).size.height / 95,
                      ),
                      child: Icon(Icons.arrow_drop_down_circle_rounded)),
                  iconSize: MediaQuery.of(context).size.height / 20,
                  iconEnabledColor: Colors.white, //Icon color
                  style: TextStyle(
                      //te
                      color: Colors.white, //Font color
                      fontSize: 20 //font size on dropdown button
                      ),

                  dropdownColor: Colors.white, //dropdown background color
                  underline: Container(), //remove underline
                  isExpanded: true,
                  //make true to make width 100%
                )),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.height / 5.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(31, 122, 140, 1.0),
              ),
              child: MaterialButton(
                onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => yourSubjects()),
                      );},
                child: Text(
                  'confirm',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 32,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
