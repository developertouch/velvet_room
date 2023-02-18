import 'package:flutter/material.dart';
class dark_and_light_theme extends StatefulWidget {
  const dark_and_light_theme({Key? key}) : super(key: key);

  @override
  State<dark_and_light_theme> createState() => _dark_and_light_themeState();
}

bool  _iconBool = false;

IconData  _iconLight = Icons.wb_sunny;
IconData  _iconDark = Icons.nights_stay;
ThemeData  _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light
);
ThemeData   _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);




class _dark_and_light_themeState extends State<dark_and_light_theme> {
  @override
  Widget build(BuildContext context) {
    theme:_iconBool ? _darkTheme : _lightTheme;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            setState(() {
              _iconBool = !_iconBool;
            });
          }, icon: Icon(_iconBool ? _iconDark : _iconLight))
        ],
      ),
    );
  }
}
