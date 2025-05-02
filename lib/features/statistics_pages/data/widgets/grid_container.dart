import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class grid_container extends StatelessWidget {
  IconData icon;
  Color iconColor;
  String wordCount;
  String text;
  Gradient gradient;
  Color? textColor=Colors.black;
  Color? borderColor;
  grid_container({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.wordCount,
    required this.text,
    required this.gradient,
    this.textColor,
    required this.borderColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width*0.8,
      // height: MediaQuery.of(context).size.height*0.5,
      decoration: BoxDecoration(
        border:Border(
          bottom: BorderSide(color:borderColor!)
        ),
        borderRadius: BorderRadius.circular(20),
        gradient: gradient,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon,color: iconColor,),
                Text(
                  wordCount,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: textColor),
                ),
              ],
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
