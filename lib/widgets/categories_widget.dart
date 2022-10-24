import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dart_theme_provider.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {Key? key,
      required this.passColor,
      required this.catText,
      required this.imgPath})
      : super(key: key);
  final String catText;
       final String imgPath;
  final Color passColor;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Container(
      decoration: BoxDecoration(
          color: passColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: passColor.withOpacity(0.7), width: 2)),
      child: Column(
        children: [
          Container(
            height: _screenWidth * 0.3,
            width: _screenWidth * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.fill)),
          ),
          Text(
            catText,
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
