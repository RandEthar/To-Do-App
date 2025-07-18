import 'package:flutter/material.dart';
import 'package:to_do_app/app/app.dart';
import 'package:to_do_app/core/database/cache.dart';
import 'package:to_do_app/core/services/service_locator.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  setup(); 
 await getIt<CacheHelper>().init();
  runApp(const ToDoApp());
}


