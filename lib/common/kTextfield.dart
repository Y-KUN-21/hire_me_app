import 'package:flutter/material.dart';

class KTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;

  KTextField({Key key, this.obscureText, this.hint}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: TextFormField(
          cursorColor: Colors.blue,
          obscureText: obscureText ?? false,
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: new EdgeInsets.all(20.0),
            hintText: hint ?? "",
          ),
        ),
      ),
    );
  }
}
