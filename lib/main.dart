import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:language_app/locale/DemoLocalization.dart';
import 'package:language_app/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {


  static void setLocale(BuildContext context , Locale locale){
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;

  void setLocale(Locale locale){
    setState(() {
      _locale = locale;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Demo",
      locale: _locale,
      theme: ThemeData(primarySwatch: Colors.blue),
      supportedLocales: [
        Locale('en','US'),
        Locale('hi','IN')
      ],
      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocale,supportedLocales){
        for(var locale in supportedLocales){
          if(locale.languageCode==deviceLocale.languageCode && locale.countryCode==deviceLocale.countryCode){
            return deviceLocale;
          }
        }
        
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}