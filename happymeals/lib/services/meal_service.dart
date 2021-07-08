import 'dart:convert';
import 'package:happymeals/models/MealCategory.dart';
import 'package:happymeals/models/Meal.dart';
import 'package:http/http.dart';

class MealService {
  List<MealCategory> mealsCategoriesList = [];
  List<Meal> mealsList = [];

  Future<List<MealCategory>> getMealsCategoriesList() async {
    Response mealCategoryResponse = await get(Uri.parse(
        'https://www.themealdb.com/api/json/v2/9973533/categories.php'));
    Map data = jsonDecode(utf8.decode(mealCategoryResponse.bodyBytes));
    final categoriesResults = data['categories'];
    for (var i = 0; i < categoriesResults.length; i++) {
      MealCategory mealCategory = new MealCategory(
          id: categoriesResults[i]['idCategory'],
          name: categoriesResults[i]['strCategory'],
          imageUrl: categoriesResults[i]['strCategoryThumb'],
          description: categoriesResults[i]['strCategoryDescription']);
      mealsCategoriesList.add(mealCategory);
    }
    return mealsCategoriesList;
  }

  Future<List<Meal>> getMealsByCategory(String category) async {
    Response mealResponse = await get(Uri.parse(
        'https://www.themealdb.com/api/json/v2/9973533/filter.php?c=$category'));
    Map data = jsonDecode(utf8.decode(mealResponse.bodyBytes));
    final mealsResults = data['meals'];
    for (var i = 0; i < mealsResults.length; i++) {
      Meal meal = new Meal(
          id: mealsResults[i]['idMeal'],
          name: mealsResults[i]['strMeal'],
          imageUrl: mealsResults[i]['strMealThumb']);
      mealsList.add(meal);
    }
    return mealsList;
  }
}
