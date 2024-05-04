import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          SizedBox(height: 40),
          Text("What are\nYou looking for?", style: Styles.headlineStyle1.copyWith(fontSize: 35),),
          SizedBox(height: 20,),
          AppTicketTabs(firstTab: "Airline Tickes",secondTab: "Hotels",),
          SizedBox(height: 25,),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 10,),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xD91130CE),
            ),
            child: Center(
              child: Text("Find tickets",style: Styles.textStyle.copyWith(color: Colors.white,),),
            ),
          ),
          SizedBox(height: 40,),
          const AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all"),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 435,
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/NL.PNG")
                        )
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                    style: Styles.headlineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 210,
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(18)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text("Take the survey about out services and get discount",style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      )),
                    ],
                  ),
                    SizedBox(height: 15,),
                    Container(
                      width: size.width*0.44,
                      height: 210,
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color:  const Color(0xFFEC6545),
                      ),
                      child: Column(
                        children: [
                          Text("Take love",style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          SizedBox(height: 5,),
                          RichText(text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '💘',
                                style: TextStyle(fontSize: 30)
                              ),
                              TextSpan(
                                  text: '😀',
                                  style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                  text: '😡',
                                  style: TextStyle(fontSize: 30)
                              ),
                            ]
                          ))
                        ],
                      ),
                    )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
