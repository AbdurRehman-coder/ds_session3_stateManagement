import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ThemeChangerScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final String title = 'State Management';
  @override
  Widget build(BuildContext context) {
    final theme_changer = Provider.of<ThemeChangerScreen>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
        title,
        style: GoogleFonts.aclonica(
          fontSize: 30.0,
        ),
      )),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              'world could be a better place',
              style: GoogleFonts.pacifico(
                  textStyle: Theme.of(context).textTheme.headline6),
            ),
            Image(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.height * .3,
              image: AssetImage('images/moon.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile<ThemeMode>(
              title: Text(
                'Light Mode',
                style: GoogleFonts.aBeeZee(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              value: ThemeMode.light,
              groupValue: theme_changer.themeMode,
              onChanged: theme_changer.setTheme,
            ),
            RadioListTile<ThemeMode>(
              title: Text(
                'Dark Mode',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: ThemeMode.dark,
              onChanged: theme_changer.setTheme,
              groupValue: theme_changer.themeMode,
            ),
          ],
        ),
      ),
    );
  }
}
