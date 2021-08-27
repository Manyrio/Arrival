import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(ArrivalWeb());

class ArrivalWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arrival project',
      home: HomePage(),
    );
  }
}