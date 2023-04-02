import 'package:attendane_app/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:http/http.dart' as http;

class SectionInfo extends StatelessWidget {
  SectionInfo({super.key});
  var path = 'assetss/icons8-qr-code-64.png';
  var album_name = 'QR-Codes';
  void saveImage() async {
    await GallerySaver.saveImage(path, albumName: album_name);
  }

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
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Download this QR-Code',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0A3F4F),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                            content: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assetss/icons8-qr-code-64.png'),
                                    fit: BoxFit.contain),
                              ),
                            ),
                            actions: [
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    saveImage();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                        'Downloaded to Gallery',
                                        textAlign: TextAlign.center,
                                      )),
                                    );
                                  },
                                  child: const Text('Download'),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            petroleum),
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
                      child: Image.asset(
                        "assetss/QR.png",
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
