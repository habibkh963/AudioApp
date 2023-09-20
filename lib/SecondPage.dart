import '../../ThiredPage.dart';
import 'package:flutter/material.dart';

import 'controller/AudioController.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page 2')),
      body: Center(
          child: ActionChip(
        label: Text('go to page 3'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ThiredPage(),
          ));
        },
      )),
    );
  }
}
