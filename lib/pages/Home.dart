import 'package:flutter/material.dart';
import 'package:language_app/locale/DemoLocalization.dart';
import 'package:language_app/locale/constants.dart';
import 'package:language_app/main.dart';
import 'package:language_app/models/Language.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _changeLanguage(Language language) async{
    Locale _locale=await setLocaleinMemory(language.languagecode);
    print("_changeLanguage(Language language)");

    MyApp.setLocale(context,_locale);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Text(DemoLocalization.of(context).translate('text')),
             MaterialButton(onPressed: (){_changeLanguage(Language.languageList[0]);},
                           child: Text("English"),
                           color: Colors.blue,
                           splashColor: Colors.red,
                          ),
             MaterialButton(onPressed: (){_changeLanguage(Language.languageList[1]);},
                           child: Text("Hindi"),
                           color: Colors.blue,
                           splashColor: Colors.red,
                          )
           ],
         ),
       )
    );
  }
}