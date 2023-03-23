
import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
import 'card4.dart';

class Home extends StatefulWidget {
  // const Home(this.color, this.size, {Key? key}) : super(key: key);

  // final Color color;
  // final double size;

  @override
  _HomeState createState() => _HomeState();


}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Ecran1(),
    Ecran2(),
    Ecran3(),
    EcranSettings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('TD2', 
  //         style: Theme.of(context).textTheme.headline6,
  //       ),
  //     ),
  //     body: Center(
  //       child: Text("Allez, on commence",
  //         style: Theme.of(context).textTheme.headline1,
  //       ),
  //     ),
  //     bottomNavigationBar: BottomNavigationBar(
  //       selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
  //       items: const <BottomNavigationBarItem>[
  //         BottomNavigationBarItem( icon: Icon(Icons.article),
  //           label: 'Card',
  //         ),
  //         BottomNavigationBarItem( icon: Icon(Icons.article),
  //           label: 'Card2',
  //         ),
  //         BottomNavigationBarItem( icon: Icon(Icons.article),
  //           label: 'Card3',
  //         ),
  //       ], ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application TD2',style: Theme.of(context).textTheme.headline6,),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.article),
            label: 'Card1',
          ),
          BottomNavigationBarItem( icon: Icon(Icons.article),
            label: 'Card2',
          ),
          BottomNavigationBarItem( icon: Icon(Icons.article),
            label: 'Card3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ], ),
    );
  }

}


