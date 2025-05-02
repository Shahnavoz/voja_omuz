import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_project/features/main_pages/data/models/category_model.dart';
import 'package:job_project/features/statistics_pages/data/widgets/grid_container.dart';

List<String> carouselImages = [
  'assets/images/carousel_img1.png',
  'assets/images/carousel_img2.png',
  'assets/images/carousel_img3.png',
  'assets/images/carousel_img4.png',
];

List<Widget> allItems = [
  grid_container(
    gradient: LinearGradient(colors: [Colors.white, Colors.pink[200]!]),
    icon: FontAwesomeIcons.bookOpen,
    iconColor: Colors.red,
    wordCount: '0 вожа',
    text: 'Хатогиҳои ман',
    borderColor: Colors.red,
  ),
  grid_container(
    gradient: LinearGradient(colors: [Colors.white, Colors.greenAccent[100]!]),
    icon: Icons.check_circle,
    iconColor: Colors.green,
    wordCount: '0 вожа',
    text: 'Вожаҳои омӯхташуда',
    borderColor: Colors.green,
  ),
  grid_container(
    gradient: LinearGradient(colors: [Colors.orange[100]!, Colors.orange]),
    icon: Icons.sync,
    iconColor: Colors.white,
    wordCount: '0 вожа',
    text: 'Вожаҳо барои такрор',
    textColor: Colors.white,
    borderColor: Colors.yellow,
  ),

  Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.blue)),
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue[300],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_box_outlined, color: Colors.white),
          Text(
            'Вожа илова кардан',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ),
];

List<CategoryModel> categories = [
  CategoryModel(img: 'assets/images/food.png', title: 'Хӯрок'),
  CategoryModel(img: 'assets/images/person_categ.png', title: 'Одам'),
  CategoryModel(img: 'assets/images/geografy.png', title: 'Ҷуғрофия'),
  CategoryModel(img: 'assets/images/math.png', title: 'Математика'),
  CategoryModel(img: 'assets/images/shop.png', title: 'Мағоза'),
  CategoryModel(img: 'assets/images/time.png', title: 'Вақт'),
];
