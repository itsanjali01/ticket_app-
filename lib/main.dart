import 'package:book_your_trip/home/all_ticket.dart';
import 'package:book_your_trip/home/widgets/Approutes.dart';
import 'package:book_your_trip/home/widgets/all_hotels.dart';
import 'package:book_your_trip/screen/hotel_detail.dart';
import 'package:book_your_trip/ticketScreen/ticketscreen%20view.dart';
import 'package:flutter/material.dart';

import 'base/Bottom_nav_bar.dart';

void main() {

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       AppRoutes.homePage:(context)=> const BottomNavBar(),
        AppRoutes.allTickets:(context)=>const AllTickets(),
        AppRoutes.ticketScreen:(context) => const TicketScreen(),
        AppRoutes.allHotels :(context) => const AllHotels(),
        AppRoutes.HotelDetail :(context) => const HotelDetail()
      },
    );
  }
}
