import 'package:flutter/material.dart';

Size media(BuildContext context) => MediaQuery.sizeOf(context);
TextStyle textStyle(
        {required Color color,
        required FontWeight fontWeight,
        required double size}) =>
    TextStyle(fontSize: size, color: color, fontWeight: fontWeight);
