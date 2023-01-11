import 'package:flutter/material.dart';

import 'exp.dart';

class Loading extends StatelessWidget {
  final double? h;
  final double? w;
  final Color? color;
  final double? thickness;
  const Loading(
      {Key? key,
      this.h = 20,
      this.w = 20,
      this.color = Colors.black,
      this.thickness = 3.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Con(
        h: h!,
        w: w!,
        clip: Clip.none,
        ch: CircularProgressIndicator(
          color: color,
          strokeWidth: thickness!,
        ),
      ),
    );
  }
}
