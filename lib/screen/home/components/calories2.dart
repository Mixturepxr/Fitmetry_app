import 'package:fitmetry/screen/home/components/nav.dart';
import 'package:flutter/material.dart';
class Cal2 extends StatelessWidget {
  const Cal2({super.key});

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
        title: const Text('Calories',style: TextStyle(fontFamily: 'Lato',fontSize: 20,fontWeight: FontWeight.bold),),
        
        elevation: 0,
         backgroundColor: Colors.transparent,
        
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              color: Color(0xff21BF73)),
        ),
        leading: IconButton(
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return Nav();
                  }
                ),
              ),
          },
          icon: const Icon(Icons.arrow_back, size: 25))
      ),
      body: SingleChildScrollView(
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
                child: Image.asset('assets/images/Calories2.png'),
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
                              Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 5, 0, 0),
                                            child: const Text(
                                              "・",
                                              style: TextStyle(
                                                  fontFamily: 'lato',
                                                  color: Color(0xff21BF73),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 0, 0),
                                            child: const Text(
                                              "Scrambled Egg",
                                              style: TextStyle(
                                                  fontFamily: 'lato',
                                                  color: Color(0xff696666),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 5, 0, 0),
                                            child: const Text(
                                              "・",
                                              style: TextStyle(
                                                  fontFamily: 'lato',
                                                  color: Color(0xff21BF73),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 0, 0),
                                            child: const Text(
                                              "Sourdough",
                                              style: TextStyle(
                                                  fontFamily: 'lato',
                                                  color: Color(0xff696666),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 10, 0, 0),
                                            child: const Text(
                                              "246.97 kcal",
                                              style: TextStyle(
                                                  fontFamily: 'lato',
                                                  color: Color(0xff21BF73),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 10, 0, 0),
                                            child: FloatingActionButton.small(
                                              onPressed: (() => {}),
                                              heroTag: 'Add1',
                                              tooltip: 'Add',
                                              backgroundColor:
                                                  const Color(0xff21BF73),
                                              child: const Icon(Icons.add),
                                            ),
                                          )
                                        ],
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
                                  heroTag: 'Add2',
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
                                  heroTag: 'Add3',
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
                                  heroTag: 'Add4',
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
