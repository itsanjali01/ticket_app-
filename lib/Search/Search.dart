import 'package:book_your_trip/Search/app%20text%20icons.dart';
import 'package:book_your_trip/Search/app%20ticket%20tabs.dart';
import 'package:book_your_trip/Search/find%20ticket.dart';
import 'package:book_your_trip/Search/ticket_promotion.dart';
import 'package:book_your_trip/home/widgets/style.dart';
import 'package:flutter/material.dart';

import '../home/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("What are\nYou looking for?", style: AppStyles.headLineStyle1.copyWith(fontSize: 35)),
           const SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "All Tickets",
            SecondTab: "Hotels",
          ),
          const SizedBox(height: 25,),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded,text: "Departure",),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_rounded,text: "Arrival",),
          const SizedBox(height: 25,),
          const FindTickets(),
          const SizedBox(height: 40,),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View All' ,
            func: () =>Navigator.pushNamed(context,"/all_tickets"),

          ),
          const SizedBox(height: 15,),
        const TicketPromotion(),
        ],
    ),
    );

  }
}
