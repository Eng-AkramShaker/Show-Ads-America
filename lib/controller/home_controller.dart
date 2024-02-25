// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_typing_uninitialized_variables, avoid_print, unrelated_type_equality_checks, unnecessary_brace_in_string_interps, unnecessary_null_comparison, avoid_function_literals_in_foreach_calls, unnecessary_string_interpolations, empty_catches, unused_element

import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  //
  final auth = FirebaseAuth.instance;
  final fire_store = FirebaseFirestore.instance;

  // ===================================================

  final textfield = TextEditingController();
}
