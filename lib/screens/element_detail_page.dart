import 'package:flutter/material.dart';
import 'package:peridoic_table/components/element_detail.dart';
import 'package:peridoic_table/components/my_scaffold.dart';
import 'package:peridoic_table/components/text_area.dart';
import 'package:peridoic_table/element_class.dart';
import 'package:peridoic_table/tools/helper_functions.dart';

class ElementDetailPage extends StatelessWidget {
  final ElementClass element;
  const ElementDetailPage({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: ElementDetail(
        model3D: element.model_3D,
        detailInfo: [
          Image.network(
            element.bohrModelImage,
            width: 100,
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextArea("Name: ${element.name}"),
              TextArea("Symbol: ${element.symbol}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextArea("Block: ${element.block}"),
              TextArea("Period: ${element.period}"),
              TextArea("Group: ${element.group}"),
            ],
          ),
          TextArea(
            "Category: ${element.category.toTitleCase()}",
            isCenter: false,
          ),
          TextArea(
            "Phase: ${element.phase}",
            isCenter: false,
          ),
          TextArea(
            "Electron Configuration: ${element.electronConfiguration}",
            isCenter: false,
          ),
          Text(element.summary),
        ],
      ),
      title: Text(element.name),
    );
  }
}
