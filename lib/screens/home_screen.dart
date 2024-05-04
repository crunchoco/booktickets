import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class  HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  Column(
              children: [
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("Good morning",style: Styles.headlineStyle3,),
                         const SizedBox(height: 5,),
                         Text("Book Tickets",style: Styles.headlineStyle1,),
                      ],
                    ),
                    Container(
                      height: 50,
                      width:  50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage
                          (
                            image: AssetImage(
                          "assets/images/book_ticket.png"
                        )
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205)),
                      Text("Search",style: Styles.headlineStyle4,)
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all")
              ],
            ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleticket) => TicketView(ticket: singleticket)).toList()
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppDoubleTextWidget(bigtext: "Hotels", smalltext: "View all")
          ),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
            ),
          )
        ],
      ),
    );
  }
}
