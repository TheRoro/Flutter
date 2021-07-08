import 'package:flutter/material.dart';
import 'package:happymeals/models/MealCategory.dart';
import 'package:happymeals/pages/meals_details.dart';
import 'package:happymeals/services/meal_service.dart';

class MealsList extends StatefulWidget {
  @override
  _MealsListState createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
  List<MealCategory> mealsList = [];

  @override
  void initState() {
    super.initState();
    getMealsCategories();
  }

  void getMealsCategories() async {
    print("fetching meals categories");
    final response = await MealService().getMealsCategoriesList();
    setState(() {
      mealsList = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: mealsList.length,
        itemBuilder: (context, index) {
          final item = mealsList[index];

          return GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 200,
                    child: Expanded(child: Image.network('${item.imageUrl}'))),
                SizedBox(
                    height: 50,
                    child: Text(
                      item.name,
                      overflow: TextOverflow.clip,
                      softWrap: true,
                    )),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealDetails(mealCategory: item),
                ),
              );
            },
          );
        },
      )),
    );
  }
}
