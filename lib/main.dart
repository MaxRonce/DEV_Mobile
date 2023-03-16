import 'package:flutter/material.dart';
import 'package:tp2_flutter/UI/home.dart';
import 'package:tp2_flutter/UI/mytheme.dart';
import 'package:tp2_flutter/UI/mytheme_provider.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: const MyTD2(),
    ),
  );
}

class MyTD2 extends StatelessWidget {
  const MyTD2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).themeData;
    return MaterialApp(
      theme: theme,
      title: 'TD2',
      home: Home(),
    );
  }
}

