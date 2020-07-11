import 'package:flutter/material.dart';
import 'package:language_app/main.dart';
import 'package:language_app/models/Language.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _changeLanguage(Language language){
    Locale _locale=Locale(language.languagecode,language.countrycode);

    MyApp.setLocale(context,_locale);
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: child,
    );
  }
}