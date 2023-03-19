import 'package:flutter/material.dart';
import 'package:peridoic_table/utils/contants.dart';

const marginVal = EdgeInsets.symmetric(horizontal: 5.0);
const paddingVal = EdgeInsets.symmetric(vertical: 10.0, horizontal: 20);
final borderRadius = BorderRadius.circular(50.0);

class TextArea extends StatelessWidget {
  final String text;
  final bool isCenter;
  const TextArea(this.text, {super.key, this.isCenter = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginVal,
      padding: paddingVal,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: const LinearGradient(
          colors: [kTextBgColor1, kTextBgColor2],
        ),
      ),
      child: isCenter
          ? Center(
              child: Text(text),
            )
          : Text(text),
    );
  }
}
