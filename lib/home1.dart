import 'package:attendane_app/attendance_page.dart';
import 'package:attendane_app/excuse_From.dart';
import 'package:attendane_app/request_Excuse.dart';
import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  Color grey = Color.fromRGBO(237, 237, 237, 1.0);
  Color petroleum = Color.fromRGBO(10, 63, 79, 1.0);
  Color sky = Color.fromRGBO(202, 240, 248, 1.0);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = screenHeight / 6;
    final logoHeight = screenHeight / 8;
    final iconWidth = screenWidth / 2.3;
    final cardHeight = screenHeight / 8;
    final cardWidth = screenWidth / 2.3;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: appBarHeight,
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5.0),
                    child: Image.asset("assetss/image icon3-01.png"),
                  ),

          Container(
            height: logoHeight,
            width: iconWidth,
            margin: EdgeInsets.only(
              right: 15.0,
            ),
            child: Image.asset(
              "assetss/حضرني.png",
            ),
          ),                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assetss/Calendar-amico.png",
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight / 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        height: cardHeight,
                        width: cardWidth,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color.fromRGBO(31, 122, 140, 1.0),
                          elevation: 10,
                          shadowColor: Colors.blueGrey,
                          child: Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Text(
                                  "Write Excuse",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => request_Excuse()));
                      },
                    ),
                    InkWell(
                child: Container(
                        height: cardHeight,
                        width: cardWidth,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color.fromRGBO(31, 122, 140, 1.0),
                          elevation: 10,
                          shadowColor: Colors.blueGrey,
                          child: Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Text(
                                  "Confirm Attendance",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                     onTap: (){
                       Navigator.push(
                           context, MaterialPageRoute(builder: (context) => attendance_page()));
                     },
                   ),
                 ],
                           ),
              ),


           ],
         ),


        ],
      ),
    );
  }

}
