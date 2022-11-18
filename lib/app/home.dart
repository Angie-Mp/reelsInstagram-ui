import 'package:flutter/material.dart';
import 'package:flutter_app/app/viewUser.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Home extends StatefulWidget {
  //const NavigationScreen8({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    // Text('1'),
    HomePage(),

    Text('2'),
    // AmigoPage8(),
    Text('3'),
    Text('4'),
    //BandejaPage8(),
    Text('5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Typicons.home_outline,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
