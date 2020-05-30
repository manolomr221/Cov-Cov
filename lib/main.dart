
import 'dart:ui';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));


const colorFondo = Color(0xFFFEFEFE);
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
        scaffoldBackgroundColor: colorFondo, // color fondo app
        fontFamily: "Poppins",
        
        textTheme: TextTheme(
          bodyText2: TextStyle( color: Colors.black), //color texto paginas 
           )
        ),
      home: HomeScreen(),
       debugShowCheckedModeBanner: false,
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
              textBottom2: " Cov-Cov XIX",
              offset: offset,
            ),
            SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.symmetric(vertical:0, horizontal: 30), //pading imagenes info
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Acerca del Covid 19\n",
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: "Toca la imagen para ver mas informacion",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),                    
                    ],
                  ),
                  SizedBox(height: 0),
                  
                  Container(
                    margin: EdgeInsets.only(top: 10), //margen entre texto e imagen
                    padding: EdgeInsets.all(20),
                    height: 180, //tamaño container card
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), //redondeado card
                      color: Colors.white, //color fondo containers
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10), //decoracion contorno card
                          blurRadius: 20, //decoracion color
                         // color: kShadowColor,
                          color: Colors.blue[100], //decoracion containers imagenes
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
                              return AcercaPage() ;
                                },
                              ),
                            );
                          },
                        child: Image.asset (
                        'assets/images/v2.png',
                        width: 190,
                         fit: BoxFit.fitWidth ,
                          ),
                      ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),//espacio entre card
                    Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Sintomas\n",
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: "Toca la imagen para ver mas informacion",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),                    
                    ],
                  ),
                   
                   Container(
                    margin: EdgeInsets.only(top: 20), //espacio entre titul y card
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     height: 180, //tamaño container card
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), //redondeado card
                      color: Colors.white, //color fondo containers
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10), //decoracion contorno card
                          blurRadius: 20, //decoracion color
                         // color: kShadowColor,
                          color: Colors.blue[100], //decoracion containers imagenes
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
                        'assets/images/sintomas.jpg',
                        width: 250,
                         fit: BoxFit.contain,
                          ),
                      ),

                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Prevenir contagio",
                        style: kTitleTextstyle,
                      ),
                    ],
                  ),
                 Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 180, //tamaño container card
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), //redondeado card
                      color: Colors.white, //color fondo containers
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10), //decoracion contorno card
                          blurRadius: 20, //decoracion color
                         // color: kShadowColor,
                          color: Colors.blue[100], //decoracion containers imagenes
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
                              return PrevencionPage() ;
                                },
                              ),
                            );
                          },
                        child: Image.asset (
                        'assets/images/prevenir.png',
                        width: 260,
                         fit: BoxFit.contain,
                          ),
                      ),

                      ],
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
       appBar: AppBar(
        title: Text('Videos Informativos'),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[ 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Sintomas",
                        style: kTitleTextstyle,
                      ),
                    ],
                  ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/prevenir.mp4',
            ),
            looping: true,
          ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Sintomas(
                          image: "assets/images/tenor.gif",
                          title: "Dolor de cabeza",
                          isActive: true,
                        ),
                        Sintomas(
                          image: "assets/images/tos.gif",
                          title: "Tos",
                        ),
                        Sintomas(
                          image: "assets/images/fiebre.gif",
                          title: "fiebre",
                        ),
                      ],
                    ),
                      
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Sintomas(
                          image: "assets/images/tenor.gif",
                          title: "Dolor muscular",
                          isActive: true,
                        ),
                        Sintomas(
                          image: "assets/images/tos.gif",
                          title: "Cansancio",
                        ),
                        Sintomas(
                          image: "assets/images/fiebre.gif",
                          title: "Dificultad \n al respirar",
                        ),
                      ],
                    ),
                      
                  ),
                  Text("Prevención", style: kTitleTextstyle),
                  SizedBox(height: 20),
                  Prevencion(
                    text:
                        "Usa cubrebocas si sales fuera de casa para prevenir el contagio del virus",
                    image: "assets/images/bocas.gif",
                    title: "Usa Cubrebocas",
                  ),
                  Prevencion(
                    text:
                        "   Lava tus manos frecuentemente con agua y jabón",
                    image: "assets/images/manos2.gif", 
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

class PrevencionPage extends StatefulWidget {
  @override
  _PrevencionPageState createState() => _PrevencionPageState();
}

class _PrevencionPageState extends State<PrevencionPage> {
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
       appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[ 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Como prevenir",
                        style: kTitleTextstyle,
                      ),
                    ],
                  ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/prevenir.mp4',
            ),
            looping: true,
          ),
                  SizedBox(height: 10),
                  Text("Prevención", style: kTitleTextstyle),
                  SizedBox(height: 10),
                  Prevencion(
                    text:
                        "Usa cubrebocas si sales fuera de casa para prevenir el contagio del virus",
                    image: "assets/images/bocas.gif",
                    title: "Usa Cubrebocas",
                  ),
                  Prevencion(
                    text:
                        "LavaLava tus manos frecuentemente con agua y jabón",
                    image: "assets/images/manos2.gif", 
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
        height: 120, //tam containers 
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 120, //tam container fondo
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[100], //color container texto
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
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),),
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


class PrevenirPage extends StatefulWidget {
  @override
  _PrevenirPageState createState() => _PrevenirPageState();
}

class _PrevenirPageState extends State<PrevenirPage> {
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
       appBar: AppBar(
        title: Text('Videos Informativos'),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[ 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Prevención",
                        style: kTitleTextstyle,
                      ),
                    ],
                  ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/prevenir.mp4',
            ),
            looping: true,
          ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Prevención", style: kTitleTextstyle),
                  SizedBox(height: 20),
                  Prevencion(
                    text:
                        "Usa cubrebocas si sales fuera de casa para prevenir el contagio del virus",
                    image: "assets/images/wear_mask.png",
                    title: "Usa Cubrebocas",
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
        padding: EdgeInsets.only(left: 10, top: 30, right: 15), //posiscion titulo 
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

//videos

class AcercaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
         padding: EdgeInsets.all(10),
        children: <Widget>[
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      Text(
                        "¿Que es el covid 19?",
                        style: kTitleTextstyle,
                      ),
                      
                    ],
                   
                  ),
                          Text(
                  "COVID‑19 es la enfermedad infecciosa causada por el coronavirus que se ha descubierto más recientemente. Tanto este nuevo virus como la enfermedad que provoca eran desconocidos antes de que estallara el brote en Wuhan (China) en diciembre de 2019. Actualmente la COVID‑19 es una pandemia que afecta a muchos países de todo el mundo.", 
                   textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 15),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/covid.mp4',
            ),
            looping: true,
          ),
           
        ],
      ),
    );
  }
}

class ChewieListItem extends StatefulWidget {
  // This will contain the URL/asset path which we want to play
  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieListItem({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping: widget.looping,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}


//carrusel
class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();
 
  final String title = "Carousel Demo";
 
  @override
  CarouselDemoState createState() => CarouselDemoState();
}
 
class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 00.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        
                      ),
                      
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  
                  decoration: BoxDecoration(
                   
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.blueAccent : Colors.grey,   
                      
                  ),
                ); 
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            
          ],
        ),
      ),
    );
  }
 
  imgAnt() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
 
  imgSig() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
