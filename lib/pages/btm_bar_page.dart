import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterecommerce/pages/cart_page.dart';
import 'package:flutterecommerce/pages/categories.dart';
import 'package:flutterecommerce/pages/home_page.dart';
import 'package:flutterecommerce/pages/user_page.dart';
import 'package:provider/provider.dart';

import '../provider/dart_theme_provider.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex=0;
  final List _pages=[
    HomePage(),
    CategoriesPage(),
    CartPage(),
    UserPage(),
  ];
  void _selectedPage(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final themeState=Provider.of<DarkThemeProvider>(context);
    bool _isDark=themeState.getDarkTheme;
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: _isDark? Colors.black12:Colors.white,
        backgroundColor: _isDark? Theme.of(context).cardColor:Colors.red,
        selectedItemColor: _isDark?  Colors.pink:Colors.amber,
        //if have any requrment
        // type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,

        currentIndex: _selectedIndex,
        onTap: _selectedPage,
        items:  <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(_selectedIndex==0?IconlyBold.home: IconlyLight.home),
         label: "Home" ),
         BottomNavigationBarItem(icon: Icon(_selectedIndex==1?IconlyBold.category:IconlyLight.category),
         label: "Catagories" ),
         BottomNavigationBarItem(icon: Icon(_selectedIndex==2?IconlyBold.buy:IconlyLight.buy),
         label: "Cart" ),
         BottomNavigationBarItem(icon: Icon(_selectedIndex==3?IconlyBold.user2:IconlyLight.user2),
         label: "User" ),
        ],
      ),
    );
  }
}
