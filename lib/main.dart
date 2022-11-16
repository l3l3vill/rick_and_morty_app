import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/app.dart';
import 'package:rick_and_morty_app/locator.dart';

void main() async{
  await setupLocator();
  //TODO add bloc observer.
  runApp(const MyApp());
}

