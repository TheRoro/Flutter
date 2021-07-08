import 'package:flutter/material.dart';
import 'package:happymeals/models/Meal.dart';
import 'package:happymeals/models/MealCategory.dart';
import 'package:happymeals/services/meal_service.dart';

class MealDetails extends StatefulWidget {
  final MealCategory mealCategory;
  MealDetails({required this.mealCategory});

  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  List<Meal> mealsList = [];
  @override
  void initState() {
    super.initState();
    getMeals();
  }

  void getMeals() async {
    print("fetching meals by category");
    final response =
        await MealService().getMealsByCategory(widget.mealCategory.name);
    setState(() {
      mealsList = response;
      print(mealsList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
                child: Text(
                  '${widget.mealCategory.name}',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Image.network(widget.mealCategory.imageUrl),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 40.0, bottom: 20.0),
                child: Text(widget.mealCategory.description,
                    style: TextStyle(color: Colors.black54)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mealsList.length,
                itemBuilder: (context, index) {
                  final item = mealsList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Expanded(
                                    child: Image.network('${item.imageUrl}'))),
                            SizedBox(
                                width: 100,
                                height: 50,
                                child: Text(
                                  item.name,
                                  overflow: TextOverflow.clip,
                                  softWrap: true,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
