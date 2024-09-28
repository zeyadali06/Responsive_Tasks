import 'package:flutter/material.dart';

class FileCategoryModel {
  final Color color;
  final String title;
  final int numberOfFiles;
  final double storage;
  final String svgPath;

  FileCategoryModel({required this.svgPath, required this.color, required this.title, required this.numberOfFiles, required this.storage});
}
