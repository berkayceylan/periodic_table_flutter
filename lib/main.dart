import 'package:flutter/material.dart';
import 'package:peridoic_table/element_class.dart';
import 'package:peridoic_table/screens/element_detail_page.dart';
import 'package:peridoic_table/screens/table_view.dart';
import 'package:peridoic_table/utils/contants.dart';

void main() {
  runApp(const PeriodicTableApp());
}

class PeriodicTableApp extends StatelessWidget {
  const PeriodicTableApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff090C22),
        scaffoldBackgroundColor: kBodyBackgroundColor,
      ),
      title: 'Periodic Table',
      initialRoute: kMainScreenAddress,
      routes: {
        kMainScreenAddress: (context) => const TableView(),
      },
    );
  }
}
