import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;

  KText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.maxLines,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: fontSize != null ? fontSize : 16,
        fontFamily: fontFamily != null ? fontFamily : 'roboto',
        color: color != null ? color : Colors.black,
        fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
