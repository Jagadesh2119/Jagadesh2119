import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Codingscreen createState() => Codingscreen();
}

class Codingscreen extends State<MyApp> {
  int currentPos = 0;
  List<String> listPaths = [
    "images/nature1.jpg",
    "images/nature2.jpg",
    "images/nature3.jpg",
    "images/nature4.jpg",
  ];
  int currentPosi = 0;
  List<String> listPathsi = [
    "images/nature1.jpg",
    "images/nature2.jpg",
    "images/nature3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: new Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: new Column(
                    children: [
                      new Text(
                        "Give Dot an early",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      new Text(
                        "coding headstart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      new Text(
                        "With Cuemath's live online coding classes, start early",
                        style: TextStyle(height: 2.5, fontSize: 13),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text("and build their", style: TextStyle(fontSize: 13),),
                          new Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: new Text(
                              "intuition",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                          new Text("for coding and computational ",  style: TextStyle(fontSize: 13)),
                        ],
                      ),
                      new Text(
                        "thinking",
                        style: TextStyle(height: 1.5, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "Images/picky.jpg",
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ClipPath(
                    clipper: OvalTopBorderClipper(),
                    child: new Container(
                      height: 620,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: SweepGradient(
                          stops: [
                            0.13,
                            0.2,
                            0.45,
                            0.6,
                            0.75,
                            0.95,
                          ],
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Color(0xFFFAF4DF),
                            Colors.white,
                            Color(0xFFADD2EF),
                            Color(0xFFF1CBD6),
                            Colors.white,
                            Colors.greenAccent[100],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                new CarouselSlider(
                    items: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 5, bottom: 30, right: 10),
                        child: new Container(
                            // First Review Slider
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                      color: Colors.grey)
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: ListTile(
                              // First Slider
                              leading: Icon(
                                Icons.emoji_emotions_rounded,
                                size: 45,
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  "Learning to write programs stretches your mind, and helps you think better, creates a way of thinks about things"
                                  "that I think is helpful in all domains.",
                                  maxLines: 4,
                                  style: TextStyle(height: 1.5, fontSize: 11),
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "- Bill Gates",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 5, bottom: 30, right: 10),
                        child: new Container(
                            // Second Review Slider
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                      color: Colors.grey)
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: ListTile(
                              // Second Slider
                              leading: Icon(
                                Icons.emoji_emotions_rounded,
                                size: 45,
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  "Whether you want to uncover the secrets of the universe, or you just want to pursue a career in the 21st century, basic computer program-ming is an essential"
                                  "skill to learn.",
                                  maxLines: 5,
                                  style: TextStyle(height: 1.5, fontSize: 11),
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "- Stephen Hawking",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 5, bottom: 30, right: 10),
                        child: new Container(
                            // Third Review Slider
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                      color: Colors.grey)
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: ListTile(
                              // First Slider
                              leading: Icon(
                                Icons.emoji_emotions_rounded,
                                size: 45,
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  "All of my friends who have younger siblings who are going to college or high school - my number one piece of advice is: You should learn how to program.",
                                  maxLines: 4,
                                  style: TextStyle(height: 1.5, fontSize: 11),
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "- Mark Zuckerberg",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 5, bottom: 30, right: 10),
                        child: new Container(
                            // Fourth Review Slider
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                      color: Colors.grey)
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: ListTile(
                              // First Slider
                              leading: Icon(
                                Icons.emoji_emotions_rounded,
                                size: 45,
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  "I thinks everybody in this country should learn how to program a computer, should learn a computer language because it teaches you how to think.",
                                  maxLines: 4,
                                  style: TextStyle(height: 1.5, fontSize: 11),
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "- Steve Jobs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            )),
                      ),
                    ],
                    options: new CarouselOptions(
                        enableInfiniteScroll: false,
                        viewportFraction: 0.95,
                        height: 200,
                        onPageChanged: (index, result) {
                          setState(() {
                            currentPos = index;
                          });
                        })),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: listPaths.map((url) {
                      int index = listPaths.indexOf(url);
                      return Container(
                        width: 12.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentPos == index
                              ? Colors.grey
                              : Colors.grey.shade300,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                new Column(
                  children: [
                    SizedBox(
                      height: 230,
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                    new Text(
                      "Cuemath is the world's",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.5),
                    ),
                    new Text(
                      "leading live-class platform",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.5),
                    ),
                    new Text(
                      "for coding and math skills",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.5),
                    )
                  ],
                ),
                new Column(
                  children: [
                    SizedBox(
                      height: 350,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        new Column(
                          children: [
                            new Icon(
                              Icons.emoji_emotions_rounded,
                              size: 60,
                              color: Colors.black,
                            ),
                            new Text(
                              "Build awesome",
                              style: TextStyle(height: 1.5),
                            ),
                            new Text(
                              "projects",
                              style: TextStyle(height: 1.5),
                            )
                          ],
                        ),
                        new Column(
                          children: [
                            new Icon(
                              Icons.emoji_emotions_rounded,
                              size: 60,
                              color: Colors.black,
                            ),
                            new Text(
                              "Earn Google",
                              style: TextStyle(height: 1.5),
                            ),
                            new Text(
                              "certificates",
                              style: TextStyle(height: 1.5),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 500,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Image.asset(
                                            "Images/show1.jpg",
                                            width: 500,
                                          ),
                                          Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 30, left: 10, right: 10),
                                              child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  new Text(
                                                    "200,000+ students and growing",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  new Text(
                                                    "In our 7+ years of operations since Dec 2013, Cuemath has emerged as the world's leading platform for math and coding skills."
                                                    "Today, we are present in 20+ countries across the world, and more than 200,000 students have experienced the power of the Cuemath curriculum.",
                                                    style: TextStyle(
                                                      height: 1.5,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: new Column(
                              children: [
                                new Icon(
                                  Icons.emoji_emotions_rounded,
                                  color: Colors.black,
                                  size: 60,
                                ),
                                new Text(
                                  "Impacted",
                                  style: TextStyle(color: Colors.black),
                                ),
                                new Text(
                                  "200,000+ students",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SingleChildScrollView(
                                      child: Container(
                                        height: 630,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: new Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            new Image.asset(
                                              "Images/show2.jpg",
                                              width: 500,
                                            ),
                                            Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30,
                                                    left: 10,
                                                    right: 10),
                                                child: new Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    new Text(
                                                      "Cuemath is present in",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    new Text(
                                                      "20+ countries!",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    new Column(
                                                      children: [
                                                        new SizedBox(
                                                          width: 100,
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "India"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.25),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text("USA"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text("UK"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.28,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Canada"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text("UAE"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.26,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Bangladesh"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Singapore"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.17,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Australia"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "New Zealand"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.12,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Thailand"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Malasysia"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.17,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Sri Lanka"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Indonesia"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.17,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Switzerland"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Germany"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "France"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Belgium"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.19,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "South Africa"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Nigeria"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.21,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Qatar"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Row(
                                                              children: [
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Bahrain"),
                                                              ],
                                                            ),
                                                            new Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                ),
                                                                new Icon(
                                                                  Icons
                                                                      .arrow_right_outlined,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                new Text(
                                                                    "Saudi"),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        new Row(
                                                          children: [
                                                            new Icon(
                                                              Icons
                                                                  .arrow_right_outlined,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            new Text("Kuwait"),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: new Column(
                              children: [
                                Icon(
                                  Icons.emoji_emotions_rounded,
                                  color: Colors.black,
                                  size: 60,
                                ),
                                new Text(
                                  "Present",
                                  style: TextStyle(color: Colors.black),
                                ),
                                new Text(
                                  "20+ countries",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent)),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            new ClipPath(
              clipper: OvalTopBorderClipper(),
              child: new Container(
                child: new Column(
                  children: [
                    new SizedBox(
                      height: 30,
                    ),
                    new Text(
                      "Coding is no longer optional",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    new Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        new Text(
                          "In less than a decade, almost every meaningful",
                        ),
                        new Text(
                          "career will require coding",
                          style: TextStyle(height: 1.5),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            new CarouselSlider(
                items: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 5, bottom: 30, right: 10),
                    child: new Container(
                      // First Review Slider
                      width: MediaQuery.of(context).size.width,
                      child: new SvgPicture.asset("cuemath_coding_screen/Images/doctor.svg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 5, bottom: 30, right: 10),
                    child: new Container(
                      // Second Review Slider
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: new SvgPicture.asset("cuemath_coding_screen/Images/designers.svg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 5, bottom: 30, right: 10),
                    child: new Container(
                      // Third Review Slider
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: new SvgPicture.asset("cuemath_coding_screen/Images/scientist.svg"),
                    ),
                  ),
                ],
                options: new CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 0.95,
                    height: 400,
                    onPageChanged: (index, result) {
                      setState(() {
                        currentPosi = index;
                      });
                    })),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listPathsi.map((url) {
                int index = listPathsi.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPosi == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            new Column(
              children: [
                new SizedBox(
                  height: 30,
                ),
                new Text(
                  "Coding is like a language",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                new Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    new Text("Learning coding dramatically improves a child's"),
                    new Text(
                      "creativity & logical thinking. It helps them:",
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                )
              ],
            ),
            new Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                new Stack(
                  children: [
                    new SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Row(
                            children: [
                              new CircleAvatar(
                                child: Icon(
                                  Icons.compass_calibration,
                                  color: Colors.purple.shade300,
                                  size: 30,
                                ),
                                backgroundColor: Colors.purple.shade50,
                                maxRadius: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Understand",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: new Text("a problem statement"),
                              )
                            ],
                          ),
                          new Row(
                            children: [
                              new CircleAvatar(
                                child: Icon(
                                  Icons.account_tree_sharp,
                                  color: Colors.amber.shade300,
                                  size: 30,
                                ),
                                backgroundColor: Colors.amber.shade50,
                                maxRadius: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Evaluate",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: new Text("it from different angles"),
                              )
                            ],
                          ),
                          new Row(
                            children: [
                              new CircleAvatar(
                                child: Icon(
                                  Icons.lightbulb,
                                  color: Color(0xFF4393D9),
                                  size: 30,
                                ),
                                backgroundColor: Color(0xFFBEE3FF),
                                maxRadius: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Come up with creative",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: new Text("solutions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                          new Row(
                            children: [
                              new CircleAvatar(
                                child: Icon(
                                  Icons.wallet_giftcard_outlined,
                                  color: Colors.pinkAccent,
                                  size: 30,
                                ),
                                backgroundColor: Colors.pink.shade100,
                                maxRadius: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Test",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: new Text("these ideas"),
                              )
                            ],
                          ),
                          new Row(
                            children: [
                              new CircleAvatar(
                                child: Icon(
                                  Icons.search_off_outlined,
                                  color: Color(0xFF28EA8A),
                                  size: 30,
                                ),
                                backgroundColor: Color(0xFFC5FAC5),
                                maxRadius: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: new Text("If it fails,"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: new Text(
                                  "find out",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: new Text("what went wrong"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                new SizedBox(
                  height: 30,
                ),
                ClipPath(
                  clipper: OvalTopBorderClipper(),
                  child: Container(
                    height: 1150,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.amber.shade50,
                    child: new Column(
                      children: [
                        new SizedBox(
                          height: 80,
                        ),
                        new Text(
                          "At Cuemath, we teach coding",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        new Text(
                          "just like we teach math",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              height: 1.5),
                        ),
                        new Text(
                          "Our goal for the student is not just to build apps",
                          style: TextStyle(fontSize: 11, height: 2.5),
                        ),
                        new Text(
                          "and games. Our goal is a deep mastery of ",
                          style: TextStyle(fontSize: 11, height: 1.5),
                        ),
                        new Text(
                          "computational thinking. ",
                          style: TextStyle(fontSize: 11, height: 1.5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: new CircleAvatar(
                            backgroundImage: AssetImage("Images/elon.jpg"),
                            backgroundColor: Colors.white,
                            maxRadius: 130,
                          ),
                        ),
                        new SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          color: Colors.grey.shade300)
                                    ]),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Text(
                                      "# improve their math",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Text(
                                      "use various math concepts",
                                      style: TextStyle(height: 1.5),
                                    ),
                                    new Text("to do fun coding projects")
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          color: Colors.grey.shade300)
                                    ]),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Text(
                                      "# build games and apps",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Text(
                                      "create by combining many ",
                                      style: TextStyle(height: 1.5),
                                    ),
                                    new Text("different coding concepts")
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          color: Colors.grey.shade300)
                                    ]),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Text(
                                      "# see real-world connect",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Text(
                                      "learn how coding is a part of",
                                      style: TextStyle(height: 1.5),
                                    ),
                                    new Text("their daily lives")
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          color: Colors.grey.shade300)
                                    ]),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Text(
                                      "# learn by doing ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Text(
                                      "do activities with a focus",
                                      style: TextStyle(height: 1.5),
                                    ),
                                    new Text("on computational thinking")
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          color: Colors.grey.shade300)
                                    ]),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new Text(
                                      "# revise frequently",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Text(
                                      "take regular assessments",
                                      style: TextStyle(height: 1.5),
                                    ),
                                    new Text("to retain what they learn")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new Container(
                  height: 700,
                ),
                new Stack(
                  children: [
                    new ClipPath(
                        clipper: OvalTopBorderClipper(),
                        child: new Container(
                          color: Colors.grey.shade200,
                          height: 600,
                          width: MediaQuery.of(context).size.width,
                          child: new Column(
                            children: [
                              new SizedBox(
                                height: 50,
                              ),
                              new Text(
                                "We are obsessed with having only the highest ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange.shade800,
                                    fontSize: 14),
                              ),
                              new Text(
                                "quality teachers on our platform.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange.shade800,
                                    fontSize: 14,
                                    height: 1.5),
                              ),
                              new SizedBox(
                                height: 20,
                              ),
                              new Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  new ListTile(
                                    leading: new CircleAvatar(
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.amber,
                                        size: 27,
                                      ),
                                      backgroundColor: Colors.white,
                                      maxRadius: 23,
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: new Text(
                                        "Stringent selection",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: new Text(
                                        "Less than 3% of appicants are selected, and we test for not just the applicant's math skills, but their ability to"
                                        "empathise and personalise.",
                                        style: TextStyle(
                                            fontSize: 11, height: 1.5),
                                      ),
                                    ),
                                  ),
                                  new ListTile(
                                    leading: new CircleAvatar(
                                      child: Icon(
                                        Icons.style,
                                        color: Colors.amber,
                                        size: 27,
                                      ),
                                      backgroundColor: Colors.white,
                                      maxRadius: 23,
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: new Text(
                                        "Rigorous training ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: new Text(
                                        "Each applicant undergoes an intense training process lasting 40+ hours and learns every nuance of the Cuemath Method.",
                                        style: TextStyle(
                                            fontSize: 11, height: 1.5),
                                      ),
                                    ),
                                  ),
                                  new ListTile(
                                    leading: new CircleAvatar(
                                      child: Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.amber,
                                        size: 27,
                                      ),
                                      backgroundColor: Colors.white,
                                      maxRadius: 23,
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: new Text(
                                        "Constant monitoring",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: new Text(
                                        "A quality team reviews every tutor's classes using human-AI tools, to ensure that only the best tutors stay on the platform",
                                        style: TextStyle(
                                            fontSize: 11, height: 1.5),
                                      ),
                                    ),
                                  ),
                                  new ListTile(
                                    leading: new CircleAvatar(
                                      child: Icon(
                                        Icons.scatter_plot,
                                        color: Colors.amber,
                                        size: 27,
                                      ),
                                      backgroundColor: Colors.white,
                                      maxRadius: 23,
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: new Text(
                                        "Continuous upskilling",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: new Text(
                                        "Beyond the initial training, every tutor must do additional trainings and workshops to learn latest global best practices.",
                                        style: TextStyle(
                                            fontSize: 11, height: 1.5),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                new ClipPath(
                    clipper: OvalTopBorderClipper(),
                    child: new Container(
                      color: Colors.white,
                      height: 1700,
                      width: MediaQuery.of(context).size.width,
                      child: new Column(
                        children: [
                          new SizedBox(
                            height: 30,
                          ),
                          new Text(
                            "How our coding classes work",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Image.asset(
                                "Images/digital.gif",
                              ))
                        ],
                      ),
                    )),
                new ClipPath(
                  clipper: OvalTopBorderClipper(),
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    height: 600,
                    decoration: BoxDecoration(color: Colors.black87),
                    child: new Column(
                      children: [
                        new SizedBox(height: 30,),
                        new Text("Our mastery based", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color:Colors.white)),
                        new Text("coding curriculum", style: TextStyle(fontWeight: FontWeight.bold, height: 1.5, fontSize: 17,color:Colors.white)),
                        new SizedBox(width: MediaQuery.of(context).size.width*0.8, height: 20),
                        new Text("Designed by experts from top tier", style: TextStyle(fontSize: 11, color: Colors.white),),
                        new Text("institutions like IIT & Cambridge", style: TextStyle(fontSize: 11, color: Colors.white, height: 1.5),),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
