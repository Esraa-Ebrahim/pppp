import 'package:attendane_app/lab_absence.dart';
import 'package:attendane_app/lec_absence.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class yourSubjects extends StatefulWidget {
  @override
  State<yourSubjects> createState() => _yourSubjectsState();
}

class _yourSubjectsState extends State<yourSubjects> {
  Text _selectedOption1 = Text('Lecture');
  Text _selectedOption2 = Text('Lecture');
  Text _selectedOption3 = Text('Lecture');
  Text _selectedOption4 = Text('Lecture');
  Text _selectedOption5 = Text('Lecture');
  Text _selectedOption6 = Text('Lecture');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height:MediaQuery.of(context).size.height/10,
                  width:MediaQuery.of(context).size.width/2.5,
                  child:Image.asset("assetss/حضرني.png",),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/30,
            ),
            Container(
              margin: EdgeInsets.only(right: 5.0),
              width: MediaQuery.of(context).size.width/1.2,
              child:Image.asset("assetss/Group 78.png",
                width: double.infinity,
                fit: BoxFit.fill,),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              margin: EdgeInsets.only(right: 7,left: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color:Color.fromRGBO(31, 122, 139, 1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                      ),

                      child:Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(right: 10,left: 5),
                          child: DropdownButtonHideUnderline(
                      child: DropdownButton<Text>(
                      value: _selectedOption1,
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down_circle),
                           iconSize: 30,
                        elevation: 16,
                        iconEnabledColor: Colors.white,
                        dropdownColor: Colors.white,
                        onChanged: (newValue) {
                        setState(() {
                          _selectedOption1 = newValue!;
                        });
                        },
                        items: [
                          DropdownMenuItem(child: Text('Subject Name1',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),), value: _selectedOption1),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lecture',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                     onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => page_lec()));
                                                },
                              )),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lab',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Page_section()));
                                                },
                              ))
        ],
      ),
    ),
    )
                      ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color:Color.fromRGBO(31, 122, 139, 1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                      ),

                      child:Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(right: 10,left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption2,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption2 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(child: Text('Subject Name2',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                  value: _selectedOption2),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: Text('Lecture',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                    onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => page_lec()));
                                                },
                              )),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lab',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Page_section()));
                                                },
                                  ))
                            ],
                          ),
                        ),
                      )
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color:Color.fromRGBO(31, 122, 139, 1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                      ),

                      child:Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(right: 10,left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption3,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption3 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(child: Text('Subject Name3',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                  value: _selectedOption3),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: Text('Lecture',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                  onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => page_lec()));
                                                },
                              )),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lab',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Page_section()));
                                                },
                                  ))
                            ],
                          ),
                        ),
                      )
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color:Color.fromRGBO(31, 122, 139, 1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                      ),

                      child:Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(right: 10,left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption4,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption4 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(child: Text('Subject Name4',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                  value: _selectedOption4),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: Text('Lecture',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                  onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => page_lec()));
                                                },
                              )),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lab',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Page_section()));
                                                },
                                  ))
                            ],
                          ),
                        ),
                      )
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color:Color.fromRGBO(31, 122, 139, 1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                      ),

                      child:Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(right: 10,left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption5,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption5 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(child: Text('Subject Name5',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                  value: _selectedOption5),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: Text('Lecture',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                  onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => page_lec()));
                                                },
                              )),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lab',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Page_section()));
                                                },
                              ),
                          ),
                            ],
                          ),
                        ),
                      )
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color:Color.fromRGBO(31, 122, 139, 1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                      ),

                      child:Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(right: 10,left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption6,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption6 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(child: Text('Subject Name6',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                  value: _selectedOption6),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: Text('Lecture',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                  onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => page_lec()));
                                                },
                              )),
                          DropdownMenuItem(
                              child: TextButton(
                                child: Text('Lab',style: TextStyle(fontSize: 20,color: Colors.grey),),
                                onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Page_section()));
                                                },
                                  ))
                            ],
                          ),
                        ),
                      )
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
