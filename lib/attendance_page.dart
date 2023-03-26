import 'package:flutter/material.dart';
import 'home_Screen.dart';
import 'package:geolocator/geolocator.dart';

class attendance_page extends StatefulWidget {
  const attendance_page({Key? key}) : super(key: key);

  @override
  State<attendance_page> createState() => _attendance_pageState();
}

class _attendance_pageState extends State<attendance_page> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var locationMessage = "";
    void getCurrentLocation() async {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
          var lat = position.latitude;
          var long = position.longitude;
          print ("$lat , $long ");

          setState(() {
            locationMessage = "Latitude : $lat , Longtiude : $long";
          });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.15,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    child: Image.asset(
                      'assetss/pic1.png',
                    ),
                    width: screenWidth * 0.3,
                  ),
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth * 0.3,
                    margin: EdgeInsets.only(
                      right: screenWidth * 0.05,
                    ),
                    child: Image.asset(
                      "assetss/حضرني.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              height: screenHeight * 0.1,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Confirm Attendance',
                  style: TextStyle(
                      fontSize: screenWidth * 0.08,
                      color: Color.fromRGBO(31, 122, 140, 1.0),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                children: [
                  Container(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.3,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(31, 122, 140, 1.0),
                      child: IconButton(
                        color: Color.fromARGB(255, 255, 255, 255),
                        iconSize: screenHeight * 0.05,
                        onPressed: () async {
                          getCurrentLocation();
                          print("position :$locationMessage");
                        },
                        icon: Icon(Icons.location_on),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Confirm Location',
                      style: TextStyle(
                          fontSize: screenWidth * 0.05, color: Colors.grey),
                    ),
                  ),
                  // Other widgets here
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.3,
              child: IconButton(
                color: Color.fromRGBO(31, 122, 140, 1.0),
                iconSize: screenWidth * 0.2,
                onPressed: () async {},
                icon: Icon(Icons.fingerprint),
              ),
            ),
            Container(
              child: Text(
                'Confirm Fingerprint',
                style:
                    TextStyle(fontSize: screenWidth * 0.05, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Container(
              height: 60,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(31, 122, 140, 1.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home_Screen()));
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}