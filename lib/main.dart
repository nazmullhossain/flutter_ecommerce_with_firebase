import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterecommerce/pages/btm_bar_page.dart';
import 'package:flutterecommerce/pages/categories.dart';
import 'package:flutterecommerce/pages/home_page.dart';
import 'package:flutterecommerce/provider/dart_theme_provider.dart';
import 'package:provider/provider.dart';

import 'cosnt/theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          })
        ],
        child: Consumer<DarkThemeProvider>(
            builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeProvider.getDarkTheme, context),
            home: BottomBarPage(),
          );
        }));
  }
}
