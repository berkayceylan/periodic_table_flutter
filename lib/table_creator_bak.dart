import 'package:flutter/material.dart';
import 'package:peridoic_table/element_class.dart';

class _HeaderCell extends StatelessWidget {
  final String text;

  const _HeaderCell({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey[200],
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class _EmptyCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
    );
  }
}

class ElementTile extends StatelessWidget {
  final ElementClass element;

  const ElementTile({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            element.symbol,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            element.number.toString(),
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            element.name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class TableCreator extends StatelessWidget {
  final int groupCount;
  final int periodCount;
  final List<ElementClass> elements;
  const TableCreator({
    Key? key,
    required this.groupCount,
    required this.periodCount,
    required this.elements,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> myColumn = [];
    List<Widget> myRow = [];
    myRow.add(_EmptyCell());
    for (int k = 0; k < groupCount; k++) {
      myRow.add(_HeaderCell(text: (k + 1).toString()));
    }
    Widget rowWidget = Row(
      children: myRow,
    );
    myColumn.add(rowWidget);

    for (int i = 1; i < periodCount; i++) {
      List<Widget> myRow = [];

      myRow.add(_HeaderCell(text: i.toString()));
      for (int j = 0; j < groupCount; j++) {
        bool isEmpty = true;
        for (var element in elements) {
          if (element.xpos == j + 1 && element.ypos == i) {
            myRow.add(ElementTile(element: element));
            isEmpty = false;
          }
        }
        if (isEmpty) {
          myRow.add(_EmptyCell());
        }
      }
      Widget rowWidget = Row(
        children: myRow,
      );
      myColumn.add(rowWidget);
    }

    print(myRow.toString());

    print(myColumn.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: myColumn,
    );
  }
}
