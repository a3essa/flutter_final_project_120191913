import 'package:flutter/material.dart';


class Product {
  final String id;
  final String title;
  final String price;
  final int star;
  final String imageUrl;

  const Product({required this.price, required this.star,
      required this.id, required this.title, required this.imageUrl});
}