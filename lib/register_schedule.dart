import 'package:attendane_app/home1.dart';
import 'package:attendane_app/home_Screen.dart';
import 'package:attendane_app/RegisrationPage.dart';
import 'package:flutter/material.dart';

class register_schedule extends StatefulWidget {
  register_schedule({Key? key, this.title}) : super(key: key);
  Color c1 = const Color(0x4F000A3F);
  final String? title;
  @override
  _register_scheduleState createState() => _register_scheduleState();
}

class _register_scheduleState extends State<register_schedule> {
  var selectedValue1 = 1;
  var selectedValue2 = 1;
  var selectedValue3 = 1;
  var selectedValue4 = 1;
  var selectedValue5 = 1;
  var selectedValue6 = 1;
  var selectedValue7 = 1;

  Widget _submitButton() {
    return Container(
      height: 100,
      width: 350,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //  crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: const Color(0xff1F7A8C),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => register_schedule()));
              },
              child: const Text(
                '   Add   ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: const Color(0xff1F7A8C),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_Screen()));
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
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _sizedbox2() {
    return SizedBox(
      height: 30,
    );
  }

  Widget _backbutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF1f7a8c),
          radius: 25.0,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 35.0,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()));
            },
          ),
        ),
        Image.asset(
          'assetss/حضرني.png',
        ),
      ],
    );
  }

  Widget _title() {
    return Container(
      child: Image.asset('assetss/schedule.png'),
      height: 130,
    );
  }

  Widget _sizedbox() {
    return SizedBox(
      height: 10,
    );
  }

  Widget _schedule() {
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              suffixIcon: DropdownButton(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded,
                      size: 25, color: Color(0xff1f7a8c)),
                  value: selectedValue1,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "1   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "2",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 2,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue1 = value!;
                    });
                  }),
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Semester',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              suffixIcon: DropdownButton(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded,
                      color: Color(0xff1f7a8c)),
                  value: selectedValue2,
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        "CS  ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "IS  ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "IT  ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "DS  ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 4,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue2 = value!;
                    });
                  }),
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Department',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              suffixIcon: DropdownButton(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded,
                      color: Color(0xff1f7a8c)),
                  value: selectedValue3,
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        "1   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "2",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "3   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "4   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 4,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue3 = value!;
                    });
                  }),
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Academic Year',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              suffixIcon: DropdownButton(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded,
                      color: Color(0xff1f7a8c)),
                  value: selectedValue4,
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        "subject 1 ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "subject 2 ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "subject 3",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "subject 4 ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 4,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "subject 5 ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "subject 6 ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 6,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "subject 7 ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 7,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue4 = value!;
                    });
                  }),
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Subject',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              suffixIcon: DropdownButton(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded,
                      color: Color(0xff1f7a8c)),
                  value: selectedValue6,
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        "1   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "2",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "3   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "4   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 4,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "5   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "6   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 6,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue6 = value!;
                    });
                  }),
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Duration',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Section',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Day',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: Container(),
            ),
            // child: BezierContainer()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * 0.06),
                    _backbutton(),
                    _title(),
                    _schedule(),
                    _sizedbox(),
                    _submitButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
