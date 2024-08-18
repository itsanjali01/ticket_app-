import 'package:book_your_trip/home/widgets/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.findTicketColor
      ),
      child: Center(
        child: Text(
            "find Tickets",
            style: AppStyles.textStyle.copyWith(color: Colors.white)),
      ),
    );
  }
}
