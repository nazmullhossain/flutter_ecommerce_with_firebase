import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dart_theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final themeState=Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: Text("Theme"),
          secondary:Icon(themeState.getDarkTheme?
          Icons.dark_mode_outlined
              : Icons.light_mode_outlined
          ),
          onChanged: (bool value){
            themeState.setDarkTheme=value;

          },
          value: themeState.getDarkTheme,
        ),
      ),
    );
  }
}
