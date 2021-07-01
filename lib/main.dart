import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Goal goal = new Goal(
    category: "Özel",
    type: "",
    amount: 0,
    frequency: "günlük",
    current: 0,
    total: 0,
    currentStreak: 0,
    longestStreak: 0,
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ListenableProvider<Store>(create: (_) => Store(goal))],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: kBgColor,
        ),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
