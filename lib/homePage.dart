import 'package:flutter/material.dart';

import 'SecondPage.dart';
import 'controller/AudioController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page 1')),
      body: Center(
          child: ActionChip(
        label: Text('go to page 2'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SecondPage(),
          ));
        },
      )),
    );
  }
}
