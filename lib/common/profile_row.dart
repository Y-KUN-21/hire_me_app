import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';

class ProfileRow extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function onPressed;
  ProfileRow({Key key, this.icon, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: shadowcolor, offset: Offset(4, 4), blurRadius: 2),
            BoxShadow(
                color: Colors.white, offset: Offset(-4, -4), blurRadius: 2)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: AutoSizeText(
                text ?? "Email".toLowerCase(),
                maxFontSize: 18,
                minFontSize: 15,
                style: TextStyle(
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway",
                    fontSize: 18),
              ),
            ),
            IconButton(
              icon: icon,
              onPressed: () {},
              color: selectedLabelText,
            )
          ],
        ),
      ),
    );
  }
}
