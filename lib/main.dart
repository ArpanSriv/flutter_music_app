import 'package:flutter/material.dart';

import 'CustomShapeClipper.dart';

void main() => runApp(MaterialApp(
      title: 'Jran Music',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: appTheme,
    ));

ThemeData appTheme = new ThemeData(
  primaryColor: Color(0xFFF3791A),
  fontFamily: 'Oxygen',
);

var leftColor = Color(0xEE202599); //1b1e3e
var rightColor = Color(0xEE1C1ECA);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenMain(),
        ],
      ),
    );
  }
}

class HomeScreenMain extends StatefulWidget {
  @override
  _HomeScreenMainState createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [leftColor, rightColor])),
            )),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x20E6E6E6),
                        borderRadius: new BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0x20E6E6E6),
                        borderRadius: new BorderRadius.all(Radius.circular(12.0)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Hey Pepper",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 42.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 0.1,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MusicCard(),
              MusicCard(),
            ],
          ),
        ),
      ],
    );
  }
}

class MusicCard extends StatefulWidget {
  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  var musicCardTitleStyle = TextStyle(
      fontFamily: "Oxygen", fontSize: 32.0, fontWeight: FontWeight.w800);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 42.0, top: 32.0, bottom: 16.0, right: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            elevation: 10,
            child: Stack(
              children: <Widget>[
                SizedBox(height: 215),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 64.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Color(0x60E6E6E6),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                        )),
                    child: FlatButton(
                      padding: EdgeInsets.all(2.0),
                      onPressed: null,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Music",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 12.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        top: 0.0,
                      ),
                      child: Card(
                        elevation: 20,
                        color: Colors.transparent,
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/photo_1.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ), // Image Container
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 48.0, left: 8.0, right: 8.0, bottom: 4.0),
                      child: Text(
                        "All Your Days",
                        style: TextStyle(
                          fontFamily: "OpenSansCondensed",
                          fontSize: 24.0,
//                          fontWeight: FontWeight.w800,
                          color: Color(0xFF0C0C19),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                        left: 8.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        "Shallou/Emmit Fern",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "OpenSansCondensed",
                          fontSize: 16.0,
                          color: Color(0xFF3A3A3A3),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 42.0,
                            width: 42.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0x80E6E6E6),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.bookmark_border),
                              iconSize: 22.0,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            height: 42.0,
                            width: 42.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0x80E6E6E6),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.share),
                              iconSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ), // Data Container
                // Button
              ],
            ), // Row 1
            Padding(
              padding: const EdgeInsets.only(
                left: 44.0,
                right: 10.0,
                top: 10.0,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x60E6E6E6),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(16.0),
                            bottomLeft: Radius.circular(16.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ), // Row 2
          ],
        ),
        Positioned(
          bottom: 0,
          left: 42.0 + 50.0,
          child: Container(
            height: 48.0,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: null,
                backgroundColor: leftColor,
                child: Icon(Icons.play_arrow,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//Column(
//children: <Widget>[
//Row(
//children: <Widget>[
//Spacer(),
//
//],
//),
//],
//)
