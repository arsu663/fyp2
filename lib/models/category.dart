import 'package:flutter/material.dart';

class Category {
  String? title;
  String? subTitle;
  IconData? icon;
  Color? color;
  String? image;
  Widget? container;

  Category(
      {this.title,
      this.subTitle,
      this.icon,
      this.color,
      this.image,
      this.container});
}
