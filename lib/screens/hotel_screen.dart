import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic>hotel;
  const HotelScreen({super.key,required this.hotel});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
           color: Colors.grey .shade200,
            blurRadius: 5,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          SizedBox(height: 10,),
          Text(hotel['place'],style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),),
          SizedBox(height: 5,),
          Text(hotel['destination'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
          SizedBox(height: 8,),
          Text('\$${hotel['price']}/night',style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),),

        ],
      ),
    );
  }
}
