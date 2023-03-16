import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp2_flutter/UI/mytheme_provider.dart';

class Card4 extends StatefulWidget {
  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  bool _isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
      final ThemeData theme = _isDarkMode ? ThemeData.dark() : ThemeData.light();
      Provider.of<ThemeProvider>(context, listen: false).setTheme(theme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.article,
              size: 100,
            ),
            Text(
              'Card 4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Switch(
              value: _isDarkMode,
              onChanged: _toggleDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}
