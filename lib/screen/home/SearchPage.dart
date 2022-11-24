import 'package:flutter/material.dart';
import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/services.dart';

import 'food_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<FoodModel> main_food_list = [
    FoodModel("Sourdough", "90.89 kcal 61.0 g"),
    FoodModel("Rye Sourdough", "80.0 kcal 32.0 g"),
    FoodModel("Sourdough Bread", "174.08 kcal 64.0 g"),
    FoodModel("Sourdough Roll", "107.45 kcal 35.0 g"),
    FoodModel("Scrambled Egg", "90.89 kcal 61.0 g")
  ];

  List<FoodModel> displat_list = new List.from(main_food_list);

  void updateList(String value) {
    setState(() {
      displat_list = main_food_list
          .where((element) =>
              element.food_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  late AnimateIconController c1;
  @override
  void initState() {
    c1 = AnimateIconController();
    super.initState();
  }

  bool onEndIconPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Subtract to breakfast"),
        duration: Duration(seconds: 1),
      ),
    );
    return true;
  }

  bool onStartIconPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Add to breakfast"),
        duration: Duration(seconds: 1),
      ),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FB),
      body: Padding(
        padding: EdgeInsets.only(left: 45, right: 45, top: 50, bottom: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Center(
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ]),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(width: 16.0, color: Color(0xFF21BF73)),
                ),
                hintText: "Foods,Recipe",
                prefixIcon: Icon(Icons.search, color: Color(0xFF21BF73)),
                suffixIcon: Icon(Icons.qr_code, color: Color(0xFF21BF73)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: displat_list.length,
                itemBuilder: (context, index) => ListTile(
// 4
                  leading: AnimateIcons(
                    startIcon: Icons.add_circle_outline,
                    endIcon: Icons.add_circle,
                    controller: c1,
                    size: 28,
                    endIconColor: Color(0xFF21BF73),
                    startIconColor: Color(0xFF21BF73),
                    onEndIconPress: () => onEndIconPress(context),
                    onStartIconPress: () => onStartIconPress(context),
                  ),
                  title: Text(
                    displat_list[index].food_title!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${displat_list[index].food_cal!}',
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(15.5),
                width: 366,
                decoration: BoxDecoration(
                    color: Color(0xFF21BF73),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                        onPressed: () {},
                        child: const Text("Add to breakfast",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                                )
                                )
                                )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
