import 'package:flutter/material.dart';
import 'package:peridoic_table/element_class.dart';
import 'package:peridoic_table/screens/element_detail_page.dart';
import 'package:peridoic_table/utils/contants.dart';
import 'package:peridoic_table/tools/helper_functions.dart';

class ElementTile extends StatelessWidget {
  final ElementClass? element;
  final double cellSize;
  const ElementTile({super.key, required this.element, required this.cellSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cellSize,
      height: cellSize,
      margin: cellEdgeInsets,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getElementColor(element!).backColor1,
              getElementColor(element!).backColor2
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ElementDetailPage(element: element!)));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              element!.symbol,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: getElementColor(element!).frontColor,
              ),
            ),
            Text(
              element!.number.toString(),
              style: TextStyle(
                fontSize: 12,
                color: getElementColor(element!).frontColor,
              ),
            ),
            Text(
              element!.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: getElementColor(element!).frontColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
