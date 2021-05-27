import 'package:flutter/material.dart';
import 'package:pan_out/views/goal_form_view.dart';
import 'package:pan_out/views/goal_last_form_view.dart';
import 'package:pan_out/views/home_view.dart';
import 'package:pan_out/views/goal_type_form_view.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  '/form': (context) => GoalForm(),
  '/type-form': (context) => GoalTypeForm(),
  '/last-form': (context) => GoalLastForm(),
};
