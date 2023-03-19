import 'package:flutter/material.dart';
import 'package:peridoic_table/utils/contants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;
  final double width;
  final double borderRadius;
  final Color buttonColor;
  final Color textColor;
  final IconData iconData;
  final double iconSize;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 50.0,
    this.width = double.infinity,
    this.borderRadius = 5,
    this.buttonColor = kBodyBackgroundColor,
    this.textColor = Colors.white,
    this.iconData = Icons.arrow_forward,
    this.iconSize = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      color: buttonColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: () => onPressed(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(

              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

