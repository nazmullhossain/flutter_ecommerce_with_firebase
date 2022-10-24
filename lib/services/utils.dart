
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dart_theme_provider.dart';


class Utils {
  BuildContext context;
  Utils({ required this.context});

  bool get getTheme => Provider.of<DarkThemeProvider>(context).getDarkTheme;
  Color get color=> getTheme?Colors.white:Colors.black;
}
