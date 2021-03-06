import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:language_app/Routeanimations/routetransition.dart';
import 'package:language_app/locale/DemoLocalization.dart';
import 'package:language_app/locale/constants.dart';
import 'package:language_app/main.dart';
import 'package:language_app/models/Language.dart';
import 'package:language_app/pages/Settings.dart';
import 'package:language_app/pages/Welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  

  

  @override
  Widget build(BuildContext context) {
    return Container(
         decoration: BoxDecoration(
     gradient: LinearGradient(
       begin: Alignment.topCenter,
       end: Alignment.bottomCenter,
       colors: [
         Color(0xff053f5e),
         Color(0xff022c43)
       ]
     )
         ),
         child: Scaffold(
           backgroundColor: Colors.transparent,
           body: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               
               children: <Widget>[

                 Spacer(),
                 

                 Padding(
                   padding: const EdgeInsets.only(left:20.0,right: 20),
                   child: ClayContainer(
                     depth: 10,
                     customBorderRadius: BorderRadius.circular(12),
                     color:Color(0xff053f5e) ,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(DemoLocalization.of(context).translate('text'),
                     textAlign: TextAlign.center,
                     style: TextStyle(fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'Custom'
                     ),
                     ),
                                    ),
                   ),
                 ),
                 
                Spacer(),

                 Padding(
                   padding: const EdgeInsets.only(bottom:18.0),
                   child: IconButton(icon: Center(child: Icon(Icons.settings,size: 45,color:Color(0xffffd700))), 
                   onPressed: (){Navigator.push(context, SlideUpRoute(page: Settings()));},
                   )
                 ),

                 
               ],
             ),
           ),
         )
    );
  }
}