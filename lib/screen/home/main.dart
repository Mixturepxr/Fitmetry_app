import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitMetry',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: Color(0xFFF6F8FB),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Calories',style: TextStyle(fontFamily: 'Lato',fontSize: 20,fontWeight: FontWeight.bold),),
        
        elevation: 0,
        backgroundColor: Colors.transparent,
        
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              color: Color(0xff21BF73)),
        ),
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.arrow_back)),

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.only(top: 28),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(32),
                height: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset('assets/images/Calories.png'),
              ),
              Container(
                child: Column(
                  children: [
                    Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                // ignore: prefer_const_constructors
                child: Text(
                  "Category",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'lato'),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 10, 40),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: 168,
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 4))
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 100, 0),
                                child: Image.asset(
                                  'assets/images/breakfast.png',
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 55, 0),
                                child: const Text(
                                  "Breakfast",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: const Text(
                                  "Recommeneded portion",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Color(0xff696666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 65, 0),
                                child: const Text(
                                  "300 - 350 kcal",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Color(0xff696666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(90, 10, 0, 0),
                                child: FloatingActionButton.small(
                                  onPressed: (() => {}),
                                  tooltip: 'Add',
                                  backgroundColor: const Color(0xff21BF73),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  //Lunch
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: 168,
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 4))
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 100, 0),
                                child: Image.asset(
                                  'assets/images/salad.png',
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 90, 0),
                                child: const Text(
                                  "Lunch",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: const Text(
                                  "Recommeneded portion",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Color(0xff696666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 60, 0),
                                child: const Text(
                                  "420 - 489 kcal",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Color(0xff696666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(90, 10, 0, 0),
                                child: FloatingActionButton.small(
                                  onPressed: (() => {}),
                                  tooltip: 'Add',
                                  backgroundColor: const Color(0xff21BF73),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  //Dinner
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: 168,
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 4))
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 100, 0),
                                child: Image.asset(
                                  'assets/images/chicken.png',
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 85, 0),
                                child: const Text(
                                  "Dinner",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: const Text(
                                  "Recommeneded portion: 20% of daily consumption",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Color(0xff696666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ), 
                              Container(
                                padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                                child: FloatingActionButton.small(
                                  onPressed: (() => {}),
                                  tooltip: 'Add',
                                  backgroundColor: const Color(0xff21BF73),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  //Snack
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 20, 40),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: 168,
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 4))
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 100, 0),
                                child: Image.asset(
                                  'assets/images/bag.png',
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 95, 0),
                                child: const Text(
                                  "Snack",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                child: const Text(
                                  "Recommeneded portion: 20% of daily consumption",
                                  style: TextStyle(
                                      fontFamily: 'lato',
                                      color: Color(0xff696666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                                child: FloatingActionButton.small(
                                  onPressed: (() => {}),
                                  tooltip: 'Add',
                                  backgroundColor: const Color(0xff21BF73),
                                  child: const Icon(Icons.add),
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                // ignore: prefer_const_constructors
                child: Text(
                  "Recommend",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'lato'),
                ),
              ),
            ),
            SizedBox(
              height: 86,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 186,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white),
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                            image: AssetImage('assets/images/Re1.png'),
                          )),
                          child: null,
                        ),
                      ),
                    ),
                  ),
                  //Recommand 2
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 186,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white),
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                            image: AssetImage('assets/images/Re2.png'),
                          )),
                          child: null,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 186,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white),
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                            image: AssetImage('assets/images/Re3.png'),
                          )),
                          child: null,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 186,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.transparent),
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                            image: AssetImage('assets/images/Re4.png'),
                          )),
                          child: null,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
