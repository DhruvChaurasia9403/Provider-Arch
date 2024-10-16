import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DarkThemeProvider.dart';
class Darktheme extends StatefulWidget {
  const Darktheme({super.key});

  @override
  State<Darktheme> createState() => _DarkthemeState();
}

class _DarkthemeState extends State<Darktheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Section'),
      ),
      body:Column(
        children:[
          RadioListTile(
            title:Text('Light'),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile(
            title:Text('Dark'),
            value: ThemeMode.dark,

            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile(
            title:Text('System'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          Icon(Icons.favorite),
        ],
      )
    );
  }
}
