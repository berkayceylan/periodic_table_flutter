//It can be update
import 'package:flutter/material.dart';
import 'package:peridoic_table/utils/contants.dart';

class HeaderCell extends StatelessWidget {
  final String text;
  //maybe add it later
  const HeaderCell({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: cellEdgeInsets,
      width: 0,
      height: 0,
      color: kBodyBackgroundColor,
      child: const Center(
        child: Text(
          "",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

