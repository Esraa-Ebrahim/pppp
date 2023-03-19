import 'package:attendane_app/contact_us.dart';
import 'package:attendane_app/emails.dart';
import 'package:attendane_app/home1.dart';
import 'package:attendane_app/schedule.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:attendane_app/today_absence.dart';
import 'dart:io';
import 'dart:convert';

 class home_Screen extends StatefulWidget {
  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
   int _selectedIndex = 0;

   final _pageOptions = [     Home1(),   emails() , schedule(),    ContactUs(),  ];
   PickedFile? _imageFile;
   String? image64;
   final ImagePicker picker = ImagePicker();
   Color grey = Color.fromRGBO(237, 237, 237, 1.0);
   Color petroleum= Color.fromRGBO(10, 63, 79, 1.0);
   Color sky=Color.fromRGBO(202, 240, 248, 1.0);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        width:  MediaQuery.of(context).size.width * 0.75,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage("assetss/img_1.png"),
                    fit: BoxFit.cover),
              ),
              child:(Column(children: [
                Stack(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: _imageFile == null ? const AssetImage("assetss/actor.png") : FileImage(File(_imageFile!.path)) as ImageProvider),
                    Padding(
                      padding: EdgeInsets.only(left: 60, top: 75),
                      child: CircleAvatar(
                        backgroundColor:Colors.white,
                        radius: 15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 63, top: 79),
                      child: CircleAvatar(
                        backgroundColor:Color.fromRGBO(237, 237, 237, 1.0),
                        radius: 12,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => bottomSheet(),
                              );
                            });
                          },
                          child: Icon(Icons.edit, color:Color.fromRGBO(10, 63, 79, 1.0),),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Text("Name",style: TextStyle( color:petroleum,fontSize: 15,fontWeight: FontWeight.bold),),
              ],
              ) ),

            ),
            ListTile(
              leading:Icon(Icons.recent_actors,color:petroleum,),
              title: Text('ID',style: TextStyle(color:petroleum),),
            ),
            Divider(color:grey,thickness: 1,),

            ListTile(
              leading:Icon(Icons.phone_android,color:petroleum,),
              title: Text('Mobile',style: TextStyle(color:petroleum),),
            ),
            Divider(color:grey,thickness: 1,),

            ListTile(
              leading:Icon(Icons.account_balance,color:petroleum,),
              title: Text('Department',style: TextStyle(color:petroleum),),
            ),
            Divider(color:grey,thickness: 1,),

            ListTile(
              leading:Icon(Icons.person_off,color:petroleum,),
              title: Text('Today Absence',style: TextStyle(color:Color.fromRGBO(10, 63, 79, 1.0),
                decoration: TextDecoration.underline,
              ),
              ),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Absence()));
              },
            ),
            Divider(color:grey,thickness: 1,),

            ListTile(
              leading:Icon(Icons.logout,color:petroleum,),
              title: Text('Logout',style: TextStyle(color:petroleum,
                decoration: TextDecoration.underline,),
              ),
            ),
            Divider(color:grey,thickness: 1,),


          ],
        ),),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(202, 240, 248, 1.0),
          items: [
               BottomNavigationBarItem(
              icon: Image.asset("assetss/icons8-home-48.png",
                width:MediaQuery.of(context).size.width/10,
                height:MediaQuery.of(context).size.width/10,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assetss/icons8-new-message-90.png",
                width:MediaQuery.of(context).size.width/15,
                height:MediaQuery.of(context).size.width/15,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assetss/icons8-event-64.png",
                width:MediaQuery.of(context).size.width/10,
                height:MediaQuery.of(context).size.width/10,),
              label: "",
            ),
              BottomNavigationBarItem(
              icon: Image.asset("assetss/icons8-contact-us-48.png",
                width:MediaQuery.of(context).size.width/10,
                height:MediaQuery.of(context).size.width/10,),
              label: "",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
   Widget bottomSheet() {
     return Container(
       color: Color.fromRGBO(159, 148, 171, 1.0),
       height: 100,
       width: MediaQuery.of(context).size.width,
       margin: EdgeInsets.symmetric(
         horizontal: 20,
         vertical: 20,
       ),
       child: Column(
         children: <Widget>[
           Text(
             "Choose profile photo",
             style: TextStyle(
               fontSize: 20,
             ),
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               ElevatedButton.icon(
                 icon: Icon(Icons.camera),
                 onPressed: () {
                   takePhoto(ImageSource.camera);
                 },
                 label: Text("Camera"),
               ),
               ElevatedButton.icon(
                 icon: Icon(Icons.image),
                 onPressed: () {
                   takePhoto(ImageSource.gallery);
                 },
                 label: Text("Gallery"),
               ),
             ],
           )
         ],
       ),
     );
   }

   void takePhoto(ImageSource source) async {
     final pickedFile = await picker.getImage(
       source: source,
     );
     setState(() {
       _imageFile = pickedFile ?? '' as PickedFile;
       print(_imageFile?.path);
     });
   }

   pickPicture() async {
     _imageFile = await picker.getImage(
         source: ImageSource.gallery, maxHeight: 200, maxWidth: 200);

     print(_imageFile);

     if(_imageFile != null) {
       final File newImage = File(_imageFile!.path);

       List<int> imageBytes = newImage.readAsBytesSync();
       image64 = base64Encode(imageBytes);
     }
   }
}