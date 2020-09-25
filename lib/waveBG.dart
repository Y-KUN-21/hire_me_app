import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WaveBGPage extends StatefulWidget {
  final Color backgroundColor;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  WaveBGPage(
      {Key key,
      this.backgroundColor,
      this.color1,
      this.color2,
      this.color3,
      this.color4})
      : super(key: key);

  @override
  _WaveBGPageState createState() => _WaveBGPageState();
}

class _WaveBGPageState extends State<WaveBGPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: WaveWidget(
        config: CustomConfig(
          colors: [
            widget.color1,
            widget.color2,
            widget.color3,
            widget.color4,
          ],
          durations: [32000, 21000, 18000, 5000],
          heightPercentages: [0.52, 0.60, 0.65, 0.70],
        ),
        backgroundColor: widget.backgroundColor,
        size: Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      ),
    );
  }
}
