import 'package:flutter/material.dart';
import '../calories.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[

            /* icon sun */
            Expanded(
              flex: 1,
              child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 5, top: 25),
              child: Image.asset('assets/icons/akar-icons_sun-fill.png',
                height: 40,
                ),
              ),
            ),
            
            /*All of intro text*/
            Expanded(
              flex: 3,
              child: Column(
              mainAxisSize:MainAxisSize.min,
              children: <Widget>[

              /*Text "Tues 12 oct" */
              Padding(
              padding: const EdgeInsets.only(right: 70, top: 80),
              child: Text("TUES 12 OCT",
                style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.w800, 
                  fontFamily: 'Lato',
                  color: const Color(0xff21BF73),
                  fontSize: 15,
                  letterSpacing: 0.5,
                  ),
                ),
              ),

              /*Text "Hey, Winter !" */
              Padding(
              padding: const EdgeInsets.only(right: 30, top: 5),
              child: Text("Hey, Winter !",
                style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold, 
                  fontFamily: 'Lato',
                  color: const Color(0xff333333),
                  fontSize: 22,
                  letterSpacing: 0.5,
                  ),
                ),
              ),

              /*Text "Let’s get Exercise~" */
              Padding(
              padding: const EdgeInsets.only(right: 30, top: 5),
              child: Text("Let’s get Exercise~",
                style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(fontWeight: FontWeight.w500, 
                  fontFamily: 'Lato',
                  color: const Color(0xff526452),
                  fontSize: 15,
                  letterSpacing: 0.5,
                  ), 
                ),
              ),
            ],
          ),
        ),
            
            /* Profile pic */
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 85, left: 55, right: 27),
                child: Image.asset('assets/images/Profile_pic.png',
                  height: 130,
                  // fit:BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),  
          
             /* Grid: Calories */
            Expanded(
              flex: 2,

             /* Tap!!! */
              child: TextButton(
                onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const Cal();
                  }
                ),
              );
              },
              
              child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                
                /* our backgound of grid calories */
                Container(
                  margin: const EdgeInsets.only(left: 38, right: 38,top: 10),
                  height: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3EB994),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                /* calories image */
                Positioned(
                  top: 16,
                  left: 52,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    height: 118,
                    width: 130,
                    child: Image.asset('assets/icons/cal.png'),
                  ),
                ),

                /* Title: calories */
                Positioned(
                  top: 32,
                  right: 125,
                  child: SizedBox(
                    height: 136,
                    width: 130,
                    child: Column(
                      children: const <Widget>[
                      Text("CALORIES",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700, 
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),
                   ],
                  ),
                ),
              ),

              /* Calories: 560 */
                Positioned(
                  top: 28,
                  right: 20,
                  child: SizedBox(
                    height: 136,
                    width: 130,
                    child: Column(
                      children: const <Widget>[
                      Text("560",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700, 
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 21,
                          letterSpacing: 0.5,
                        )
                      ),
                    ],
                  ),
                ),
              ),

              /* Calories: kcal */
                Positioned(
                  top: 52,
                  right: 15,
                  child: SizedBox(
                    height: 15,
                    width: 130,
                    child: Column(
                      children: const <Widget>[
                      Text( "kcal",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400, 
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                          letterSpacing: 0.5,
                        )
                      ),
                    ],
                  ),
                ),
              ),

              /* Calories: num% */
                Positioned(
                  top: 65,
                  left: 150,
                  child: SizedBox(
                    height: 100,
                    width: 130,
                    child: Column(
                      children: const <Widget>[
                      Text("42%",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700, 
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          letterSpacing: 0.5,
                        )
                     ),
                    ],
                  ),
                ),
              ),

              /* Calories: load */
                Positioned(
                top: 62,
                right: 50,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 70,
                  width: 195,
                  child: Image.asset('assets/icons/load.png'),
                ),
                ),

              /* Calories: last update */
                Positioned(
                top: 105,
                right: 43,
                child: SizedBox(
                  height: 100,
                  width: 130,
                  child: Column(
                    children: const <Widget>[
                    Text("last update 3m",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500, 
                        color: Color(0xffD5EDE6),
                        fontSize: 12,
                        letterSpacing: 0.5,
                      )
                    ),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        ),

          /* All of 4 grid */

          Expanded(
              flex: 7,
              child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
               
                /* calories image */
                Positioned(
                  top: 25,
                  left: 27,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    height: 200,
                    width: 190,
                    child: Image.asset('assets/images/Walk_Step.png'),
                  ),
                ),

                Positioned(
                  top: 25,
                  right: 27,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    height: 200,
                    width: 190,
                    child: Image.asset('assets/images/Water.png'),
                  ),
                ),

                Positioned(
                  left: 27,
                  top: 240,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    height: 200,
                    width: 190,
                    child: Image.asset('assets/images/Sleep.png'),
                  ),
                ),

                Positioned(
                  right: 27,
                  top: 240,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    height: 200,
                    width: 190,
                    child: Image.asset('assets/images/Exercise.png'),
                  ),
                ),
              ],
            ),
          ),


          ],
        );

        
        
      }
    }