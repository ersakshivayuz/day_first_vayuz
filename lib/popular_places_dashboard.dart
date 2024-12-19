import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' ;

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Text('Hi, David',
                            style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(width: 20,),
                          Icon(Icons.waving_hand_sharp, size: 34, color: Colors.yellow.shade700,),
                        ],
                      ),

                      Text('Welcome to the world',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),)
                    ],

                  ),
                  CircleAvatar(
                    radius: 40,
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            customSearchbar(),
            SizedBox(height: 20,),
            //Popular widget row
            Row(
              children: [
                Text('Popular Places',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24

                ),),
                SizedBox(width: 140,),
                Text('View all', style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),

              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,ind) {
                    return
                    ind == 0 ?
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: popularPlaceItem(title: "Most Viewed", textColor: Colors.white, buttonColor: Colors.black),

                    ):
                    ind ==1?
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: popularPlaceItem(title: "Nearby", textColor: Colors.grey, buttonColor: Colors.white),
                        ) : ind ==2?
                    Padding(padding: const EdgeInsets.all(8.0),
                      child: popularPlaceItem(title: "Nearby", textColor: Colors.grey, buttonColor: Colors.white),
                    ) : SizedBox.shrink();

                  }
              ),
            ),

            SizedBox(height: 20,),
            MountainImages(),

          ],

        ),
      ),
    )) ;
  }
}


Widget customSearchbar(){
  return   Container(
    height: 50,
    width: double.maxFinite,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Row(
      children: [
        Text('Search Please',),
        //SizedBox(width: 100,),
        SvgPicture.asset(
          'assets/icons/divider.svg',
          //semanticsLabel: 'My SVG Image',
          //  height: 100,
          //  width: 70,
        ),

        SizedBox(width: 50,),
        Icon(Icons.cloud_circle)


      ],

    ),
  );
}






Widget popularPlaceItem({Color? textColor ,Color? buttonColor
  , String? title , bool? isSelected}){
  return Container(
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.circular(20),
    ),

    padding: EdgeInsets.all(15),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title ?? "default", style: TextStyle(
          color: textColor,

          fontWeight: FontWeight.bold

      ),),
    ),

  );
}

Widget MountainImages(){
  return
      Container(

      );
}