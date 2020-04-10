import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsSreenState createState() => _TabsSreenState();
}

class _TabsSreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
        ),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('Categories')),
            BottomNavigationBarItem(
                icon: Icon(Icons.star), title: Text('Favorites'))
          ],
        ),
      ),
    );
  }
}
