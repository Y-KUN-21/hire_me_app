import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class KTextFeildLabel extends StatelessWidget {
  final String label;
  final double size;
  final Color color;
  KTextFeildLabel({Key key, @required this.label, this.size, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      label,
      style:
          TextStyle(fontSize: size, fontWeight: FontWeight.w600, color: color),
      maxFontSize: size,
      minFontSize: 15,
    );
  }
}
