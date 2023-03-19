import 'package:flutter/material.dart';
import 'package:peridoic_table/components/cells.dart';
import 'package:peridoic_table/components/element_tile.dart';
import 'package:peridoic_table/element_class.dart';
import 'package:peridoic_table/utils/contants.dart';
class _EmptyCell extends StatelessWidget {
  final double cellSize;
  const _EmptyCell({required this.cellSize});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: cellEdgeInsets,
      width: cellSize,
      height: cellSize,
    );
  }
}
class TableCreator extends StatelessWidget {
  final int groupCount, periodCount;
  final double cellSize;
  final List<ElementClass> elements;
  const TableCreator({
    Key? key,
    required this.groupCount,
    required this.periodCount,
    required this.elements,
    required this.cellSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> myColumn = [];
    List<Widget> myRow = [];
    //Group Header
    myRow.add(_EmptyCell(cellSize: cellSize,));
    for (int k = 0; k < groupCount; k++) {
      myRow.add(HeaderCell(text: (k + 1).toString()));
    }
    Widget rowWidget = Row(
      children: myRow,
    );
    myColumn.add(rowWidget);
    //Elements
    for (int i = 1; i < periodCount; i++) {
      List<Widget> myRow = [];

      myRow.add(i < 8 ? HeaderCell(text: i.toString()) : _EmptyCell(cellSize: cellSize,));
      for (int j = 0; j < groupCount; j++) {
        bool isEmpty = true;
        for (var element in elements) {
          if (element.xpos == j + 1 && element.ypos == i) {
            myRow.add(ElementTile(element: element, cellSize: cellSize,));
            isEmpty = false;
          }
        }
        if (isEmpty) {
          myRow.add(_EmptyCell(cellSize: cellSize,));
        }
      }
      Widget rowWidget = Row(
        children: myRow,
      );
      myColumn.add(rowWidget);
    }
    return Column(
      children: myColumn,
    );
  }
}
