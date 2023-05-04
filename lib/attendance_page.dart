import 'package:flutter/material.dart';
import 'home_Screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:attendane_app/services/finger_print.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class attendance_page extends StatefulWidget {
  const attendance_page({Key? key}) : super(key: key);

  @override
  State<attendance_page> createState() => _attendance_pageState();
}

class _attendance_pageState extends State<attendance_page> {
  final double collegeLatitude = 30.586811736415804; // خط العرض للكلية
  final double collegeLongitude = 31.52454322320364; // خط الطول للكلية
  final double maxDistance =
      500.0; // المسافة القصوى بين موقع المستخدم وموقع الكلية بالأمتار

  bool isFingerprintAuthenticated = false;
  bool isLocationDetermined = false;
  bool _isPresent = false;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    Position position = await Geolocator.getCurrentPosition();

    double distanceInMeters = await Geolocator.distanceBetween(
      position.latitude,
      position.longitude,
      collegeLatitude,
      collegeLongitude,
    );
    if (distanceInMeters <= 500) {
      print("attended");
      _isPresent = true;
      isLocationDetermined = true;
    } else {
      isLocationDetermined = false;
      _isPresent = false;
      print("not attended");
      print(position.longitude);
      print(position.latitude);
    }
  }

  void checkFingerprintAndLocation() {
    if (isFingerprintAuthenticated && isLocationDetermined) {
      Fluttertoast.showToast(
          msg: "تم تسجيل حضورك بنجاح!",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 5,
          backgroundColor: Color(0xff0a3f4f),
          textColor: Colors.white,
          fontSize: 20.0);
    } else {
      Fluttertoast.showToast(
          msg: "لم يتم تسجيل حضورك بعد!",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);
    }
  }

  final FingerPrint _fingerPrint = FingerPrint();
  final FlutterSecureStorage _flutterSecureStorage = FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true));
  String fprint = "";

  void checkIfFingerPrientEnable() async {
    fprint = await _flutterSecureStorage.read(key: "fingerprint") ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                          _determinePosition();
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
                onPressed: () async {
                  _fingerPrintLogin();
                },
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
            // if (fprint.isNotEmpty)
            Container(
              height: 60,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(31, 122, 140, 1.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  checkFingerprintAndLocation();
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

  void _fingerPrintLogin() async {
    bool isFingerPrintEnabled = await _fingerPrint.isFingerPrintEnabled();
    if (isFingerPrintEnabled) {
      bool isAuth = await _fingerPrint.isAuth("Login Fingerprint");
      if (isAuth) {
        isFingerprintAuthenticated = true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
            'FingerPrint Logged Successfully',
            textAlign: TextAlign.center,
          )),
        );
      } else {
        isFingerprintAuthenticated = false;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
            'Wrong FingerPrint',
            textAlign: TextAlign.center,
          )),
        );
      }
    }
  }
}
