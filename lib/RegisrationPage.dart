import 'package:attendane_app/register_schedule.dart';
import 'package:attendane_app/start_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController _phoneController = TextEditingController();
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
          icon: Icon(
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
              onChanged: (_) => check(context),
              controller: isPassword ? passwordController : _phoneController,
              obscureText: isPassword,
              keyboardType: isPassword
                  ? TextInputType.visiblePassword
                  : TextInputType.phone,
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

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login_screen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Already have an account ?',
              style: TextStyle(
                  color: Color(0xff0a3f4f),
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

  Widget _title() {
    return Container(
      child: Image.asset('assetss/register5.png'),
// height:280,
    );
  }

  Widget _sizedbox() {
    return SizedBox(
      height: 50,
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffededed)),
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'Full Name',
              prefixIcon: Icon(Icons.abc),
              hintStyle: TextStyle(
                  color: Color(0xff0a3f4f).withOpacity(0.5), fontSize: 20)),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          obscureText: isSeen,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffededed),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffededed)),
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: 'Ntional ID',
            prefixIcon: Icon(Icons.badge),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          obscureText: isSeen,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffededed),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffededed)),
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: 'College Code',
            prefixIcon: Icon(Icons.school),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Select image from"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Gallery"),
                            onPressed: () async {
                              image = (await picker.getImage(
                                  source: ImageSource.gallery)) as XFile?;
                              setState(() {});
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text("Camera"),
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
                    fillColor: Color(0xffededed),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffededed)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Select Your Image',
                    hintStyle: TextStyle(
                      color: Color(0xff0a3f4f),
                    ),
                    suffixIcon: Icon(Icons.image, color: Color(0xff1f7a8c)),
                  ),
                ),
              ),
            ),
            image == null ? Container() : Image.file(File(image!.path)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: DropdownButtonFormField<int>(
                value: selectedValue,
                items: [
                  DropdownMenuItem<int>(
                    child: Text('Department'),
                    value: null,
                  ),
                  DropdownMenuItem<int>(
                    child: Text('IS'),
                    value: 1,
                  ),
                  DropdownMenuItem<int>(
                    child: Text('IT'),
                    value: 2,
                  ),
                  DropdownMenuItem<int>(
                    child: Text('CS'),
                    value: 3,
                  ),
                  DropdownMenuItem<int>(
                    child: Text('MI'),
                    value: 4,
                  ),
                  DropdownMenuItem<int>(
                    child: Text('AI'),
                    value: 5,
                  ),
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffededed),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffededed)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
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
      body: Container(
        // height: height,
        child: Stack(
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
                    _submitButton(),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            //child: Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
