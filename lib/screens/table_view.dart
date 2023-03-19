import 'package:flutter/material.dart';
import 'package:peridoic_table/components/my_scaffold.dart';
import 'package:peridoic_table/element_class.dart';
import 'package:peridoic_table/tools/table_creator.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  List<ElementClass> elements = [];
  void getElements() async {

    final String jsonString = await rootBundle.loadString('assets/atoms.json');
    final List<dynamic> jsonList = json.decode(jsonString)["elements"];

    for (final json in jsonList){
      final element = ElementClass.fromJson(json as Map<String, dynamic>);
      elements.add(element);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      getElements();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: const Text("Periodic Table"),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: TableCreator(
              groupCount: 18,
              periodCount: 11,
              elements: elements,
              cellSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}
