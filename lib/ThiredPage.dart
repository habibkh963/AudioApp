import '../../homePage.dart';
import 'package:flutter/material.dart';

class ThiredPage extends StatelessWidget {
  const ThiredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page 3')),
      body: Center(
          child: ActionChip(
        label: Text('go to page 1'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
        },
      )),
    );
  }
}
