import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class button extends StatelessWidget {
  double Height;
  double Width;
  double Size;
  String title;
  button(this.Height, this.Width, this.Size, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / Width,
      height: MediaQuery.of(context).size.height / Height,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
        color: Color.fromRGBO(31, 122, 140, 1.0),
        onPressed: () {},
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(fontSize: Size, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
