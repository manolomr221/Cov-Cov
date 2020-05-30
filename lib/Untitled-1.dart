/*
import 'dart:ui';

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}


const kBackgroundColor = Color(0xFFFEFEFE);
const kTitleTextColor = Color(0xFF303030);
const kBodyTextColor = Color(0xFF4B4B4B);
const kTextLightColor = Color(0xFF959595);
const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecovercolor = Color(0xFF36C12C);
const kPrimaryColor = Color(0xFF3382CC);
final kShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);

const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);

const kTitleTextstyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cob Cob',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFEFEFE),
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText2: TextStyle( color: Colors.grey),  
           )
        ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: <Widget>[
         ClipPath(
           clipper: Clipper(),
            child: Container(
             height:300,
             width: double.infinity,
             decoration: BoxDecoration(
               gradient: LinearGradient( colors:[ 
                 Color(0xFF3383CD),
                  Color(0xFF11249F),
                   ],
             ),
             image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage("assets/images/v.png"),
             ),
             ),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Informacion();
                    },
                  ),
                );
              },
              child: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: (widget.offset < 0) ? 0 : widget.offset,
                    child: SvgPicture.asset(
                      widget.image,
                      width: 230,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    top: 20 ,
                    left: 150,
                    child: Text(
                      "Cobb Cob",
                      style: fontSize: 22,(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(), // I dont know why it can't work without container
                ],
              ),
            ),
          ],
        ),
           ),
         ),
       ],
     ),
   );
 } 
}

class Clipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
  var path = Path();
  path.lineTo(0,size.height-80);
  path.quadraticBezierTo(size.width/2, size.height, size.width ,size.height-40);
  path.lineTo(size.width, 0);
  path.close();
    return path;
  }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
}

}
*/