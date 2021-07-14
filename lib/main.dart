import 'package:ds_session3/HomeScreen.dart';
import 'package:ds_session3/ThemeChangerScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeChangerScreen(),
        child: Builder(
          builder: (BuildContext context) {
            final theme_changer = Provider.of<ThemeChangerScreen>(context);
            return MaterialApp(
              themeMode: theme_changer.themeMode,
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.indigo,
                primarySwatch: Colors.deepOrange,
                textTheme: TextTheme(
                  headline6: TextStyle(color: Colors.lime),
                  bodyText1: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 31,
                  ),
                ),
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                appBarTheme: AppBarTheme(color: Colors.amber),
                fontFamily: 'pacifico',
                textTheme: TextTheme(
                  headline6: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                  ),
                  bodyText1: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                  ),
                ),
              ),
              home: HomeScreen(),
            );
          },
        ));
  }
}
