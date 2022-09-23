import 'package:flutter/material.dart';


class ReuasableCard extends StatelessWidget {
  const ReuasableCard({required this.colour  , required this.cardChild, required this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    //Future.delayed(Duration.zero,(){
      //your code goes here
     // GestureDetector(
      //  onTap: () =>onPress(),
     // );
      return GestureDetector(
        onTap: () => onPress(),
        child: Container(
         margin: const EdgeInsets.all(10.0),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
         child: cardChild,

    ),
      );
  }
}