import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:peridoic_table/components/my_scaffold.dart';

class Model3DPage extends StatelessWidget {
  final String modelLink;
  const Model3DPage({Key? key, required this.modelLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: Text("3D Model"),
      body: ModelViewer(
        src: modelLink,
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}
