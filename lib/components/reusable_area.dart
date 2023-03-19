import "package:flutter/material.dart";

const marginVal = EdgeInsets.symmetric(horizontal: 5.0);
const paddingVal = EdgeInsets.all(10.0);
final borderRadius = BorderRadius.circular(10.0);

class ReusableArea extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final void Function()? onTap;
  final bool isCenter;
  const ReusableArea({super.key, required this.color, required this.cardChild, this.onTap, this.isCenter = true});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  Container(
        width: isCenter ? null : double.infinity,
        margin: marginVal,
        padding: paddingVal,
        decoration:
        BoxDecoration(color: color, borderRadius: borderRadius),
        child: isCenter ? Center(
          child: cardChild,
        ): cardChild,
      )
    );
  }
}