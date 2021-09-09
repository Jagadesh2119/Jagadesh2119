import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MymathState createState() => _MymathState();
}

class _MymathState extends State<MyApp> {
  int currentPos = 0;
  List<String> listPaths = [
    "Images/casey.png",
    'Images/donatello.png',
    'Images/leonardo.png',
    'Images/michaelangelo.png',
    'Images/raphael.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: new Column(
              // Heading...
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Meet some of our ace',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                new Text(
                  'problem-solvers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
          ),
          new Column(
            children: [
              CarouselSlider(
                items: [
                  Padding(
                    // First Slider Profile
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: new Container(
                      child: Column(
                        // Create Column for Profile Image, Name, and Description
                        children: [
                          new Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: new CircleAvatar(
                              backgroundImage:
                                  AssetImage("Images/Dwayne_Johnson.jpg"),
                              maxRadius: 65,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Text(
                                  // Creating Name
                                  "Vyom Ahuja, Grade 7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Winner of Pradhan Mantri Rashtriya Bal Puraskar",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.greenAccent),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    // Creating Description
                                    "Vyom is a Cuemath Student. His name means 'universe', and true to it, he aims for the stars! Vyom is"
                                    "either coding, flute beatboxing, playting the drums, dancing playing chess, or hosting his own Youtube channel"
                                    "in his free time. It's no surprise that our Hon'ble Prime Minister awarded him the prestigious Pradhan Mantri Rashtriya Bal Puraskar",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      width: 350,
                      height: 450,
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
                          boxShadow: [
                            new BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    // Second Slider Profile
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: new Container(
                      child: Column(
                        // Create Column for Profile Image, Name, and Description for Second Profile
                        children: [
                          new Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: new CircleAvatar(
                                backgroundImage:
                                    AssetImage("Images/Lionelmessi.jpg"),
                                maxRadius: 65,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              // Column for Second Profile Text
                              children: [
                                Text(
                                  // Creating Name
                                  "Shubh, Grade 9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Gold Medal in IIO exam",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.greenAccent),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    // Creating Description
                                    "Shubh has been a Cuemath student for three years, which has bought about development in several aspects"
                                    "Not only has he become a good problem solver, but his self-confidence has also improved. he recently won a gold "
                                    "medal in the IIO(International informatics olympiad) 2020-21",
                                    style: TextStyle(height: 1.5),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      width: 350,
                      height: 650,
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
                          boxShadow: [
                            new BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    // Third Slider Profile
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: new Container(
                      child: Column(
                        children: [
                          new Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: new CircleAvatar(
                                backgroundImage: AssetImage("Images/elon.jpg"),
                                maxRadius: 65,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              // Column for Third Profile Text
                              children: [
                                Text(
                                  // Creating Name
                                  "Advai Gowda, Grade 4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Fuel your inner curiosity",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.greenAccent),
                                  ),
                                ),
                                Padding(
                                  // creating Description
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'In his own words - "I joined coding because of my interest in gadgets. Soon I learnt that I could create many interactive'
                                    'games and apps by learning to code. I have learnt to create simple games and feel very excited about all that I can do"',
                                    style: TextStyle(height: 1.5),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      width: 350,
                      height: 650,
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
                          boxShadow: [
                            new BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 0.5,
                                color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    // Fourth Slider Profile
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: new Container(
                      child: Column(
                        children: [
                          new Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: new CircleAvatar(
                                backgroundImage:
                                    AssetImage("Images/stevejobs.jpeg"),
                                maxRadius: 65,
                              )),
                          new Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: new Column(
                              // Column for Fourth Profile Text
                              children: [
                                Text(
                                  // Creating Name
                                  "Kartik, Grade 7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Built his own APP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    // creating Description
                                    "Kartik's parents enrolled him with Cuemath when they found out that expert teachers would be conducting the classes."
                                    "He loved the teaching method and activities. He has applied what he learned in his school projects and even built an"
                                    "app after learning JavaScript.",
                                    style: TextStyle(height: 1.5),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      width: 350,
                      height: 650,
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
                          boxShadow: [
                            new BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 0.5,
                                color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                  ),
                  new Padding(
                    // Fifth Slider Profile
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: new Container(
                      child: new Column(
                        children: [
                          new Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: new CircleAvatar(
                                backgroundImage:
                                    AssetImage("Images/warren.JPEG"),
                                maxRadius: 65,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Text(
                                  // Creating Name
                                  "Avika Tatke, Grade 4",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    "International-Level ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                ),
                                Text(
                                  "Mental Math Competition Winner",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.greenAccent),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'In her own words - "Thanks to Cuemath for providing a platform to enhance my conceptual knowledge, speed and accuracy,'
                                    'which helped me win the international-level Mental Math Competition. This win was possible thanks to Cuemath'
                                    'Teacher Sapna Golani, who constantly encouraged and motivated me."',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      width: 350,
                      height: 650,
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
                          boxShadow: [
                            new BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 0.5,
                                color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                  ),
                ],
                options: CarouselOptions(
                    height: 450,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentPos = index;
                      });
                    }),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listPaths.map(
                  (url) {
                    int index = listPaths.indexOf(url);
                    return Container(
                      width: 9,
                      height: 15,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentPos == index
                              ? Colors.grey
                              : Colors.grey.shade300),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
          Stack(children: [
            Container(
              child: new Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: new CircleAvatar(
                      backgroundImage: AssetImage("Images/star.gif"),
                      maxRadius: 60,
                    ),
                  ),
                  new Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1100,
                    decoration: new BoxDecoration(
                        color: Color(0xFFF5EBCD),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.elliptical(1000, 320),
                            left: Radius.elliptical(1000, 320))),
                    child: new Column(
                      children: [
                        new Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text("Cuemath has industry-leading",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold)),
                        ),
                        new Text(
                          "renewals of above 80%",
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: new Text(
                            "Don't just take our word for it",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        new CarouselSlider(
                            items: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 5, bottom: 30, right: 10),
                                child: new Container(
                                  // First Review Slider
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
                                  child: new Column(
                                    // First Slider Content
                                    children: [
                                      new Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 0),
                                        child: new Text(
                                          // First Review
                                          '"For the last 4 years, my son has improved a lot. The teacher makes it simple with fun activities. I recommend Cuemath to all parents" ',
                                          style: TextStyle(
                                            height: 1.5,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      new Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: new ListTile(
                                          // Reviewer's Profile
                                          leading: new CircleAvatar(
                                            backgroundImage:
                                                AssetImage("Images/casey.png"),
                                            maxRadius: 20,
                                            backgroundColor:
                                                Colors.amber.shade100,
                                          ),
                                          title: new Text(
                                            "Dr.Neelima Nalawaday",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          subtitle: new Text(
                                            "Vighnesh's mom, Grade 7",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
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
                                  child: new Column(
                                    // Second Slider Content
                                    children: [
                                      new Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 0),
                                        child: new Text(
                                          // Second Review
                                          '"For over last 3 years, the experience with Cuemath & the teacher has been great ! I'
                                          'm happy to see the logical development in my child."   ',
                                          style: TextStyle(
                                            height: 1.5,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: new ListTile(
                                          // Reviewer's Profile
                                          leading: new CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "Images/leonardo.png"),
                                            maxRadius: 20,
                                            backgroundColor:
                                                Colors.grey.shade100,
                                          ),
                                          title: new Text(
                                            "Richa Shah",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          subtitle: new Text(
                                            "Samrydhi's mom, Grade 3",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
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
                                  child: new Column(
                                    // Third Slider Content
                                    children: [
                                      new Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 0),
                                        child: new Text(
                                          // Third Review
                                          '"Cuemath has significantly improved my Kids abilities to calculate mentally. The program is age-appropriate and yet challenging for them.',
                                          style: TextStyle(height: 1.5),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: ListTile(
                                          // Reviewer's Profile
                                          leading: new CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "Images/donatello.png"),
                                            maxRadius: 20,
                                            backgroundColor:
                                                Colors.redAccent.shade100,
                                          ),
                                          title: new Text(
                                            "Reema Bajaj",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          subtitle: new Text(
                                            "Aditeya's mom, Grade 1",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                  child: new Column(
                                    // Fourth Slider Content
                                    children: [
                                      new Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 0),
                                        child: new Text(
                                          // Fourth Review
                                          ' "After joining Cuemath coding Karthik curiosity to learn and concentration levels have increased. As parents we express our gratitude."',
                                          style: TextStyle(
                                            height: 1.5,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      new Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: ListTile(
                                          // Reviewer's Profile
                                          leading: new CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "Images/leonardo.png"),
                                            maxRadius: 20,
                                            backgroundColor:
                                                Colors.redAccent.shade100,
                                          ),
                                          title: new Text(
                                            "P. Vivek",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          subtitle: new Text(
                                            "Karthik's dad, Grade 8",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 5, bottom: 30, right: 10),
                                child: new Container(
                                  // Fifth Review Slider
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
                                  child: new Column(
                                    // Fifth Slider Content
                                    children: [
                                      new Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 0),
                                        child: new Text(
                                          // Fifth Review
                                          '"It gives me a great pleasure that he is able to develop creativity and passion towards programming. It would definitely help him to keep pace with'
                                          'future technology demands"',
                                          style: TextStyle(
                                            height: 1.5,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 4,
                                        ),
                                      ),
                                      new ListTile(
                                        // Reviewer's Profile
                                        leading: new CircleAvatar(
                                          backgroundImage:
                                              AssetImage("Images/raphael.png"),
                                          maxRadius: 20,
                                          backgroundColor:
                                              Colors.lightGreenAccent,
                                        ),
                                        title: new Text(
                                          "Hema Panneerselvam",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        subtitle: new Text(
                                          "Predyun's mom, Grade 5",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 5, bottom: 30, right: 10),
                                child: new Container(
                                  // Last Review Slider
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
                                  child: new Column(
                                    // Last Slider Content
                                    children: [
                                      new Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 0),
                                        child: new Text(
                                          // Last Review
                                          '"My son eagerly waits for classes because the teacher makes the learning fun. I am very happy because my son is in safe hands."',
                                          style: TextStyle(
                                            height: 1.5,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      new Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: new ListTile(
                                          // Reviewer's Profile
                                          leading: new CircleAvatar(
                                            backgroundImage:
                                                AssetImage("Images/casey.png"),
                                            maxRadius: 20,
                                            backgroundColor:
                                                Colors.amber.shade100,
                                          ),
                                          title: new Text(
                                            "Kirti Sunil Lokhande",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          subtitle: new Text(
                                            "Aayush's mom, Grade 2",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                            options: new CarouselOptions(
                              enableInfiniteScroll: false,
                              viewportFraction: 0.95,
                            )),
                        new Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: new Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: new BoxDecoration(
                              color: Color(0xFFF5EBCD),
                            ),
                            child: new Column(
                              children: [
                                new Text(
                                  "Cuemath is different, No, really!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                new Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: new Text(
                                    " The Cuemath Method is based on five powerful learning principles that make a Cuemath class completely different from a regular class.",
                                    style: TextStyle(height: 1.5),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 1000),
              child: new Container(
                height: 400,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            Positioned(
              // Arranging Place for Regular Classes
              child: new Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 650),
                child: new Container(
                  // Creating Regular Classes
                  height: 691,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        new BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0.6,
                            color: Colors.grey.shade500)
                      ]),
                  child: new Column(
                    // Content of First Regular Classes
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: new Row(
                          // First Row in Regular Classes
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("REGULAR CLASSES"),
                            Text("CUEMATH CLASSES")
                          ],
                        ),
                      ),
                      new Padding(
                        // Second Row in Regular Classes
                        padding: const EdgeInsets.only(top: 15),
                        child: new Container(
                          color: Color(0xC9E3E3E3),
                          height: 120,
                          child: new Column(
                            // Content of Second Regular Classes
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  // Title
                                  "END GOAL",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: new Column(
                                      // First text in Second Row
                                      children: [
                                        Text("Superficial completion "),
                                        Text("of coursework")
                                      ],
                                    ),
                                  ),
                                  new Column(
                                    // Second text in Second Row
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new InkWell(
                                              child: new Text("Deep"),
                                              onTap: () =>
                                                  launch('www.google.com'),
                                            ),
                                            new GestureDetector(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: new Text(
                                                  "mastery",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              onTap: () {},
                                            )
                                          ],
                                        ),
                                      ),
                                      new Text('of concepts')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      new Padding(
                        // Third Row in Regular Classes
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 120,
                          child: new Column(
                            // Content of Third Regular Classes
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  // Title
                                  "TEACHING APPROACH",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: new Column(
                                      // First text in Third Row
                                      children: [
                                        Text("Teacher tells the "),
                                        Text("answer directly")
                                      ],
                                    ),
                                  ),
                                  new Column(
                                    // Second text in Third Row
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new InkWell(
                                              child: new Text("Teacher"),
                                              onTap: () =>
                                                  launch('www.google.com'),
                                            ),
                                            new GestureDetector(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: new Text(
                                                  "cues",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              onTap: () {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: new Text("the"),
                                            )
                                          ],
                                        ),
                                      ),
                                      new Text('student to discover '),
                                      new Text('the answer')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      new Padding(
                        // Fourth Row in Regular Classes
                        padding: const EdgeInsets.only(top: 15),
                        child: new Container(
                          color: Color(0xC9E3E3E3),
                          height: 120,
                          child: new Column(
                            // Content of Fourth Regular Classes
                            children: [
                              new Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  // Title
                                  "STUDENT PARTICIPATION",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: new Column(
                                      // First text in Second Row
                                      children: [
                                        Text("Students learns "),
                                        Text("passively by watching")
                                      ],
                                    ),
                                  ),
                                  new Column(
                                    // Second text in Fourth Row
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new InkWell(
                                              child: new Text("Student learns"),
                                              onTap: () =>
                                                  launch('www.google.com'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      new GestureDetector(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: new Text(
                                            "actively by doing",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        onTap: () {},
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      new Padding(
                        // Fifth Row in Regular Classes
                        padding: const EdgeInsets.only(top: 5),
                        child: new Container(
                          height: 120,
                          child: new Column(
                            // Content of Fifth Regular Classes
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  // Title
                                  "CONTENT EMPHASIS",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: new Column(
                                      // First text in Fifth Row
                                      children: [
                                        Text("The WHAT - facts, "),
                                        Text("formulas, procedures")
                                      ],
                                    ),
                                  ),
                                  new Column(
                                    // Second text in Fifth Row
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new InkWell(
                                              child: new Text("The"),
                                              onTap: () =>
                                                  launch('www.google.com'),
                                            ),
                                            new GestureDetector(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: new Text(
                                                  "WHY",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              onTap: () {},
                                            ),
                                            new Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: new Text("- the"),
                                            )
                                          ],
                                        ),
                                      ),
                                      new Text('reasoning behind the  '),
                                      new Text('WHAT')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      new Padding(
                        // Second Row in Regular Classes
                        padding: const EdgeInsets.only(top: 15),
                        child: new Container(
                          color: Color(0xC9E3E3E3),
                          height: 120,
                          child: new Column(
                            // Content of Second Regular Classes
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: Text(
                                  // Title
                                  "PRACTICE STYLE",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: new Column(
                                      // First text in Second Row
                                      children: [
                                        Text("Through abstract, "),
                                        Text("repetitive drills")
                                      ],
                                    ),
                                  ),
                                  new Column(
                                    // Second text in Second Row
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new InkWell(
                                              child: new Text("Through"),
                                              onTap: () =>
                                                  launch('www.google.com'),
                                            ),
                                            new GestureDetector(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: new Text(
                                                  "real-world",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              onTap: () {},
                                            )
                                          ],
                                        ),
                                      ),
                                      new Text('application')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ])
        ]),
      ),
    ));
  }
}
