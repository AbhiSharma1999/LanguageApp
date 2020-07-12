import 'package:flutter/material.dart';
import 'package:language_app/Routeanimations/routetransition.dart';
import 'package:language_app/locale/constants.dart';
import 'package:language_app/main.dart';
import 'package:language_app/models/Language.dart';

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
         Color(0xffecf8f8),
         Color(0xffeee4e1),
         Color(0xffe7d8c9)
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
             width: MediaQuery.of(context).size.width/1.75,
             child: FittedBox(
               fit: BoxFit.contain,
               child: Text("Welcome!",
               textAlign: TextAlign.center,
                  style:TextStyle(
                    color: Color(0xff66503d),
                    fontWeight: FontWeight.bold,
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
                    color: Color(0xff66503d),
                    fontWeight: FontWeight.w500,
                    fontSize: 30
                  ), 
               ),
             ),
           ),

          //Spacer(),

           Container(
             height: MediaQuery.of(context).size.height/2,
             child: ListView.builder(
               physics: BouncingScrollPhysics(),
               itemCount: 2,
               itemBuilder: (BuildContext context , int i){
                 return Padding(
                   padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/5,right: MediaQuery.of(context).size.width/5),
                   child: GestureDetector(
                     onTap: (){
                       setLocaleinMemory(Language.languageList[i].languagecode);
                       Navigator.pushAndRemoveUntil(context, RotationRoute(page: MyApp()), (route) => false);
                     },
                        child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Container(child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          Language.languageList[i].name,
                          textAlign: TextAlign.center,
                          ),
                      ))
                ),
                   ),
                 );
               },
               
             ),
           )
         ],
       ),
     ),
         ),
      );
  }
}