import 'dart:developer';
import 'package:attendane_app/emails.dart';
import 'package:attendane_app/login_student.dart';
import 'package:attendane_app/start_screen.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class register_student extends StatefulWidget{
  register_student ({Key? key, this.title}) : super(key: key);
  Color c1 = const Color(0x4F000A3F);
  final String? title;
  @override
  _register_studentState createState() => _register_studentState();
}
class _register_studentState extends State<register_student> {
  int selectedValue = 1;

  Widget _backButton() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
    onPressed: (){
    Navigator.push(
    context, MaterialPageRoute(builder: (context) => start_Screen()));
    },
    ),
    ),
      ]);
}

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => yourSubjects()));
        },
        child: const Text(
          'Confirm',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );

  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login_student()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Already have an account ?',
              style: TextStyle(color: Color(0xff0a3f4f),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  color: Color(0xff1F7A8C),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sizedbox2() {
    return SizedBox(
      height: 30,
    );
  }

  Widget _title() {
    return Container(
      child: Image.asset('assetss/now.png'),

    );
  }

  Widget _sizedbox() {
    return SizedBox(
      height: 10,
    );
  }

  Widget _academycode() {
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Your Name',
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
              hintText: '  Academy Code',
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
              suffixIcon:
              DropdownButton(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded,
                      color: Color(0xff1f7a8c)),
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(
                      child: Text("1   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "2", style: TextStyle(color: Color(0xff0a3f4f)),),
                      value: 2   ,
                    ),
                    DropdownMenuItem(
                      child: Text("3   ",
                        style: TextStyle(color: Color(0xff0a3f4f)),),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "4   ", style: TextStyle(color: Color(0xff0a3f4f)),),
                      value: 4,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  }),
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Academy Year',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),

        SizedBox(
          height: 10,
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
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .1),
                      _backButton(),
                      _sizedbox2(),
                      _title(),
                      _sizedbox(),
                      _academycode(),
                      _submitButton(),
                      _loginAccountLabel(),
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