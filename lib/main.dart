import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:recipe_app/data/models/hive/ingredient_detail_hive_model.dart';
import 'package:recipe_app/data/models/hive/meal_hive_model.dart';
import 'app.dart';
import 'injection/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter(); 
  Hive.registerAdapter(MealHiveModelAdapter()); 
  Hive.registerAdapter(IngredientDetailHiveModelAdapter()); 
  
  configureDependencies();

  runApp(const MyApp());
}
