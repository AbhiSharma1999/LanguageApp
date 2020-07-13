import 'package:flutter/material.dart';
import 'package:language_app/Routeanimations/routetransition.dart';
import 'package:language_app/locale/constants.dart';
import 'package:language_app/main.dart';
import 'package:language_app/models/Language.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
          home: LanguageSelection(),
          debugShowCheckedModeBanner: false,
    );
  }
}

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({
    Key key,
  }) : super(key: key);

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

           Container(
             width: MediaQuery.of(context).size.width/1.65,
             child: FittedBox(
               fit: BoxFit.contain,
               child: Text("Welcome!",
               textAlign: TextAlign.center,
                  style:TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Custom',
                    //fontWeight: FontWeight.bold,
                    fontSize: 30
                  ), 
               ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(left:12.0,right: 12.0,bottom: 12.0),
             child: FittedBox(
               fit: BoxFit.fitWidth,
               child: Text("Please Select your Desired Language",
               textAlign: TextAlign.center,
                  style:TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Custom',
                    //fontWeight: FontWeight.w500,
                    fontSize: 30
                  ), 
               ),
             ),
           ),

          //Spacer(),

           Padding(
             padding: const EdgeInsets.only(bottom:8.0),
             child: Container(
               height: MediaQuery.of(context).size.height/2,
               child: ListView.builder(
                 physics: BouncingScrollPhysics(),
                 itemCount: 13,
                 itemBuilder: (BuildContext context , int i){
                   return Padding(
                     padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/5,right: MediaQuery.of(context).size.width/5),
                     child: GestureDetector(
                       onTap: (){
                         setLocaleinMemory(Language.languageList[i].languagecode);
                         var prefs = SharedPreferences.getInstance();
                          prefs.then((prefs) => prefs.setString('first', 'nope'));
                         Navigator.pushAndRemoveUntil(context, RotationRoute(page: MyApp()), (route) => false);
                       },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Card(
                              elevation: 15,
                              color: Color(0xffffd700),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Container(child:Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              Language.languageList[i].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff115173),
                                fontSize: 18
                              ),
                              ),
                        ))
                  ),
                          ),
                     ),
                   );
                 },
                 
               ),
             ),
           )
         ],
       ),
     ),
         ),
      );
  }
}