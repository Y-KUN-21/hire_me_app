import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';
import 'package:google_fonts/google_fonts.dart';

class SoftIcon extends StatelessWidget {
  final double radius;
  final Widget icon;

  SoftIcon({Key key, this.radius, @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius == null ? 32.0 : radius / 2),
      child: Container(
        width: radius == null ? 32 : radius * 2,
        height: radius == null ? 32 : radius * 2,
        child: icon,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(radius == null ? 32 : radius),
          boxShadow: [
            BoxShadow(color: shadowcolor, offset: Offset(4, 4), blurRadius: 2),
            BoxShadow(
                color: Colors.white, offset: Offset(-4, -4), blurRadius: 2)
          ],
        ),
      ),
    );
  }
}

class SoftField extends StatelessWidget {
  final String labeltext;

  SoftField({Key key, @required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: 400,
        height: 70,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            labelText: labeltext,
            labelStyle: GoogleFonts.raleway(
              textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
            ),
            border: InputBorder.none,
            contentPadding:
                new EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: shadowcolor, offset: Offset(4, 4), blurRadius: 2),
            BoxShadow(
                color: Colors.white, offset: Offset(-4, -4), blurRadius: 2)
          ],
        ),
      ),
    );
  }
}
