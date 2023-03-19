import 'package:flutter/material.dart';
import 'package:peridoic_table/utils/contants.dart';

class MyScaffold extends StatelessWidget {
  final Widget title;
  final Widget body;
  final Widget? myLeading;
  final bool resizeToAvoidBottomPadding;

  const MyScaffold(
      {super.key, required this.title,
        required this.body,
        this.myLeading,
        this.resizeToAvoidBottomPadding = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            // Container(
            //   transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
            //   child: IconButton(
            //     icon: const Icon(Icons.arrow_left),
            //     onPressed: () {
            //       try {
            //         if (Navigator.canPop(context)) {
            //           Navigator.pop(context);
            //         }
            //         if (Navigator.canPop(context)) {
            //           Navigator.pop(context);
            //         }
            //       } on Exception catch (ex) {
            //         Navigator.pushNamed(context, '/');
            //       }
            //     },
            //   ),
            // ),
            Padding(
              padding: myLeading == null
                  ? const EdgeInsets.only(right: 0.0)
                  : const EdgeInsets.only(right: 15.0),
              child: myLeading,
            ),
            title,
          ],
        ),
        backgroundColor: kBodyBackgroundColor,
      ),
      body: body,
    );
  }
}

