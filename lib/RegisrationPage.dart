import 'package:attendane_app/register_schedule.dart' show register_schedule;
import 'package:attendane_app/start_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var selectedValue1 = 1;
  var selectedValue2 = 1;
  var selectedValue3 = 1;
  var selectedValue4 = 1;
  var selectedValue5 = 1;
  var selectedValue6 = 1;
  var selectedValue7 = 1;
  int selectedValue = 1;

  ImagePicker picker = ImagePicker();
  XFile? image;

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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await requestLocationPermission(context);
    });
  }

  Future<void> requestLocationPermission(BuildContext context) async {
    var status = await Permission.location.request();
    if (status.isDenied) {
      await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Location Permission'),
          content: const Text(
              'This app needs access to your location to track attendance.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => openAppSettings(),
              child: const Text('Settings'),
            ),
          ],
        ),
      );
      // الصلاحية مرفوضة للأبد
    } else if (status.isGranted) {
      // الصلاحية ممنوحة
    }
  }

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
                borderSide: BorderSide(color: Color(0xff0a3f4f), width: 1.0),
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
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  College Code',
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
              hintText: '  National ID: 14 Number',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          // enabled: false,
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              //      suffixText: 'choose file',
              suffixIcon: IconButton(
                icon: Icon(Icons.image, color: Color(0xff1f7a8c)),
                onPressed: () async {
                  image = await picker.pickImage(source: ImageSource.gallery);
                  image == null ? Container() : Image.file(File(image!.path));
                  setState(
                    () {},
                  );
                },
              ),
              filled: true,
              suffixIconColor: Color(0xff0a3f4f),
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff0a3f4f), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Your Image',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        image == null ? Container() : Image.file(File(image!.path)),
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
                    DropdownMenuItem(
                      child: Text(
                        "MI  ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "AI  ",
                        style: TextStyle(color: Color(0xff0a3f4f)),
                      ),
                      value: 6,
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
