import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pp/datos.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));


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
  fontWeight: FontWeight.w700,  //grueso de letra
);

const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);

const kTitleTextstyle = TextStyle(
  fontSize: 25, //tamaño letra titulos
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
        scaffoldBackgroundColor: Color(0xFFFEFEFE), // color fondo app
        fontFamily: "Poppins",
        
        textTheme: TextTheme(
          bodyText2: TextStyle( color: Colors.black), //color texto paginas 
           )
        ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: <Widget>[
            Encabezado(
              image: "assets/images/v.png",
              textTop: "Bienvenido",
              textBottom: "          A",
              textBottom2: " Cob Cob XIX.",
              offset: offset,
            ),
           
            SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), //pading 
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Prevenir Contagio\n",
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: "mira esto pinche morro pendejo",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                     
                    
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white, //color fondo containers
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor, //decoracion containers imagenes
                        ),
                      ],
                    ),
                    child: Row(                      
                    children: <Widget>[
                    InkWell(
                      onTap:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Informacion();
                                },
                              ),
                            );
                          },
                        child: Image.asset (
                        'assets/images/v2.png',
                        width: 250,
                         fit: BoxFit.contain,
                          ),
                      ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                   Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white, //color fondo containers
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor, //decoracion containers imagenes
                        ),
                      ],
                    ),
                    child: Row(                      
                    children: <Widget>[
                    InkWell(
                      onTap:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Informacion() ;
                                },
                              ),
                            );
                          },
                        child: Image.asset (
                        'assets/images/v2.png',
                        width: 250,
                         fit: BoxFit.contain,
                          ),
                      ),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     
                      Text(
                        "Informacion",
                        style: kTitleTextstyle,
                      ),
                      Text(
                        "Ver detalles",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white, //color fondo containers
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor, //decoracion containers imagenes
                        ),
                      ],
                    ),
                       
                    child: Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Informacion extends StatefulWidget {
  @override
  _InformacionState createState() => _InformacionState();
}

class _InformacionState extends State<Informacion> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           /* Encabezado(
              image: "assets/images/head.png",
              textTop: "Conoce Sobre",
              textBottom: "Covid-19.",
              textBottom2: "",
              offset: offset,
            ), */
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sintomas",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Sintomas(
                          image: "assets/images/head.png",
                          title: "Dolor de cabeza",
                          isActive: true,
                        ),
                        Sintomas(
                          image: "assets/images/tenor.gif",
                          title: "Caugh",
                        ),
                        Sintomas(
                          image: "assets/images/fever.png",
                          title: "fiebre",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Prevention", style: kTitleTextstyle),
                  SizedBox(height: 20),
                  Prevencion(
                    text:
                        "Usa cubrebocas si sales fuera de casa para prevenir el contagio del virus",
                    image: "assets/images/wear_mask.png",
                    title: "Wear face mask",
                  ),
                  Prevencion(
                    text:
                        "Lava tus manos frecuentemente con agua ",
                    image: "assets/images/wash_hands.png",
                    title: "Lava tus manos",
                  ),
                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Prevencion extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const Prevencion({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Sintomas extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const Sintomas({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: kShadowColor,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 90),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
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

class Encabezado extends StatefulWidget {
  final String image;
  final String textTop;
  final String textBottom;
  final String textBottom2;
  final double offset;
  const Encabezado(
      {Key key, this.image, this.textTop, this.textBottom, this.textBottom2, this.offset})
      : super(key: key);

  @override
  _EncabezadoState createState() => _EncabezadoState();
}

class _EncabezadoState extends State<Encabezado> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 50, top: 30, right: 25), //posiscion titulo 
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
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
                    top: 20 - widget.offset / 2,
                    left: 150,
                    child: Text(
                      "${widget.textTop} \n${widget.textBottom} \n${widget.textBottom2}",
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.green[200], //Color encabezado
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
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

