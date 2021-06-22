import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({required this.colour, this.cardChild,this.onPress});
  
  //final make the colour property immutable
  //final variable can be initialized only once while,
  //the const variable is a compile-time constant
  final Widget? cardChild;
  final Color colour;
  final VoidCallback? onPress;  // Dont know the reason behind '?' 
  //SOURCE: https://www.udemy.com/course/flutter-bootcamp-with-dart/learn/lecture/14485536#questions/14946626
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
