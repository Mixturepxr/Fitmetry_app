import 'package:flutter/material.dart';
import 'package:fitmetry/hex_color.dart';

import '../calories.dart';

class NavCal extends StatefulWidget {
  const NavCal({super.key});

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavCal> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    //HomeScreen(),
    const Cal(),
    const Text('Home'),
    const Text('Feeds'),
    const Text('Events'),
    const Text('Calendar'),
    const Text('Menu'),
    
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;    
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: SizedBox(height: 110,
        child: BottomNavigationBar(
          
          type: BottomNavigationBarType.fixed,
          selectedItemColor: '21BF73'.toColor(),
          unselectedItemColor: 'B9BFB8'.toColor(),
          selectedFontSize: 12,
          unselectedFontSize: 12,
            
          items: [
            BottomNavigationBarItem(
              icon: Padding(
              padding: const EdgeInsets.all(1.0),
              child:  Image.asset('assets/icon/homeC.png'),),
              label: 'Home',
            ), 
            BottomNavigationBarItem(
              icon: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset('assets/icon/feeds.png'),),
              label:'Feeds',
            ), 
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon/events.png'),
              label:'Events',
            ), 
            BottomNavigationBarItem(
              icon: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset('assets/icon/calendar.png'),),
              label:'Calendar',
            ), 
            BottomNavigationBarItem(
              icon: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset('assets/icon/menu.png'),),
              label: 'Menu',
            ), 
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
        ),
      );
    }
}