import 'package:attendane_app/home_Screen.dart';
import 'package:attendane_app/lec_absence.dart';
import 'package:attendane_app/qrcode/readqr.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page_section extends StatefulWidget {
  const Page_section({super.key});

  @override
  State<Page_section> createState() => _Page_sectionState();
}

class _Page_sectionState extends State<Page_section> {
  Text _selectedOption1 = Text('');
  Text _selectedOption2 = Text('');
  Text _selectedOption3 = Text('');
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
                                      builder: (context) => yourSubjects()));
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
                height: MediaQuery.of(context).size.height / 30,
              ),
              Text(
                'Lab Absence',
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
                width: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Your Name',
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 40,
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
                height: MediaQuery.of(context).size.height / 120,
              ),
              Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Your code',
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 40,
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
                height: MediaQuery.of(context).size.height / 120,
              ),
              Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Section Number',
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 40,
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
                height: MediaQuery.of(context).size.height / 80,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.height / 4.9,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScanScreen()));
                          print('Read qr code');
                        },
                        child: Text(
                          'Scan QR code',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 50,
                          ),
                        )),
                    Container(
                        child: Icon(
                      Icons.qr_code_2,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height / 30,
                    ))
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 5),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.height / 5.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => yourSubjects()),
                    );
                  },
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
      ),
    );
  }
}
