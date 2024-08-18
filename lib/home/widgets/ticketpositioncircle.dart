import 'package:book_your_trip/home/widgets/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ticketpositioncircle extends StatelessWidget {
  final bool?pos;
  const Ticketpositioncircle({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return   Positioned(
        left: pos==true?22:null,
        right: pos==true?null:22,
        top: 265,
        child: Container(
        padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
    shape: BoxShape.circle,border: Border.all(width: 2,color: AppStyles.textColor),
    ),
    child: CircleAvatar(
    maxRadius: 4,
    backgroundColor: AppStyles.textColor,
    ),
    )) ;
  }
}
