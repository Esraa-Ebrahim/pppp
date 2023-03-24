// ignore_for_file: use_build_context_synchronously
import 'package:attendane_app/register_schedule.dart';
import 'package:attendane_app/start_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var selectedValue1 =1;
  var selectedValue2 =1;
  var selectedValue3 =1;
  var selectedValue4 =1;
  var selectedValue5 =1;
  var selectedValue6 =1;
  var selectedValue7 =1;


  final TextEditingController _phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSeen = true;
  bool isSignIn = false;
  check(BuildContext context) {
    if (_phoneController.text.length == 10 &&
        passwordController.text.length >= 6) {
      setState(() {
        isSignIn = true;
      });
    } else {
      setState(() {
        isSignIn = false;
      });
    }
  }

  ImagePicker picker = ImagePicker();
  XFile? image;
  int selectedValue = 1;

  Widget _backButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      CircleAvatar(
        backgroundColor: const Color(0xFF1f7a8c),
        radius: 25.0,
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 35.0,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => start_Screen()));
          },
        ),
      ),
    ]);
  }

  Widget _submitButton() {
    return SizedBox(
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
              MaterialPageRoute(builder: (context) => register_schedule()));
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
            context, MaterialPageRoute(builder: (context) => login_screen()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(
                  color: Color(0xff0a3f4f),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
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

  Widget _title() {
    return SizedBox(
      child:  Image.asset('assetss/register5.png'),
      height: 250,
    );
  }

  Widget _sizedbox() {
    return const SizedBox(
      height: 50,
    );
  }
  Widget _sizedbox2() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff01f7a8c), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Your Name',
              prefixIcon: const Icon(Icons.abc,color: Color(0xff1F7A8C),),
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              ),


          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextField(
          keyboardType: TextInputType.number,
          obscureText: isSeen,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffededed),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff01f7a8c), width: 1.0),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'National ID',
            prefixIcon: const Icon(Icons.badge,color: Color(0xff1F7A8C)),
            hintStyle: TextStyle(
              color: Color(0xff0a3f4f),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextField(
          obscureText: isSeen,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffededed),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff01f7a8c), width: 1.0),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'College Code',
            prefixIcon: const Icon(Icons.school,color: Color(0xff1F7A8C)),
            hintStyle: TextStyle(
              color: Color(0xff0a3f4f),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
    Column(
    children: [
    GestureDetector(
    onTap: () async {
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: const Text("Select image from"),
    actions: <Widget>[
    TextButton(
    child: const Text("Gallery"),
    onPressed: () async {
    image = (await picker.getImage(
    source: ImageSource.gallery)) as XFile?;
    setState(() {});
    Navigator.pop(context);
    },
    ),
    TextButton(
    child: const Text("Camera"),
    // ignore: duplicate_ignore
    onPressed: () async {
    image = (await picker.getImage(
    source: ImageSource.camera)) as XFile?;
    setState(() {});
    Navigator.pop(context);
    },
    ),
    ],
    );
    },
    );
    },
    child: TextFormField(
    enabled: false,
    keyboardType: TextInputType.none,
    decoration: InputDecoration(
    filled: true,
    fillColor: const Color(0xffededed),
    border: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black26, width: 1.0),
    borderRadius: BorderRadius.circular(15),
    ),
    hintText: 'Your Image',
    hintStyle: const TextStyle(
    color: Color(0xff0a3f4f),
    ),
    suffixIcon: const Icon(Icons.image, color: Color(0xff1f7a8c)),
    ),
    ),
    ),
    image == null ? Container() : Image.file(File(image!.path)),
    const SizedBox(
    height: 10,
    ),
    const SizedBox(
    width: 10,
    ),
    TextField(
    keyboardType: TextInputType.none,
    decoration: InputDecoration(
    suffixIcon:
    DropdownButton(
    icon: Icon(Icons.arrow_drop_down_circle_rounded,
    color: Color(0xff1f7a8c)),
    value: selectedValue2,
    items: const [
    DropdownMenuItem(
    value: 1,
    child: Text("IS  ",
    style: TextStyle(color: Color(0xff0a3f4f)),),
    ),
    DropdownMenuItem(
    value: 2   ,
    child: Text(
    "CS  ", style: TextStyle(color: Color(0xff0a3f4f)),),
    ),
    DropdownMenuItem(
    value: 3,
    child: Text("IT  ",
    style: TextStyle(color: Color(0xff0a3f4f)),),
    ),
    DropdownMenuItem(
    value: 4,
    child: Text(
    "DS  ", style: TextStyle(color: Color(0xff0a3f4f)),),
    ),
      DropdownMenuItem(
        value: 5,
        child: Text(
          "MI  ", style: TextStyle(color: Color(0xff0a3f4f)),),
      ),
      DropdownMenuItem(
        value: 6,
        child: Text(
          "AI  ", style: TextStyle(color: Color(0xff0a3f4f)),),
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
    ],
    ),
    ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -MediaQuery.of(context).size.height * .15,
            right: -MediaQuery.of(context).size.width * .4,
            child: Container(),
            //  child: BezierContainer(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _sizedbox(),
                  _backButton(),
                  _title(),
                  _emailPasswordWidget(),
                  _sizedbox2(),
                  _submitButton(),
                  _loginAccountLabel(),
                ],
              ),
            ),
          ),
          //child: Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    );
  }
}
