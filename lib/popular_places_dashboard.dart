import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math' show pi;


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Top Header Section
              customAppbar(),
              // Custom Search Bar
              customSearchbar(),

              // Popular Places Section
            _viewAllBar(),
              SizedBox(
                height: 75,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, ind) {
                      return ind == 0
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: popularPlaceItem(
                            title: "Most Viewed",
                            textColor: Colors.white,
                            buttonColor: Colors.black,
                        ),
                      )
                          : ind == 1
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: popularPlaceItem(
                          title: "Nearby",
                          textColor: Colors.grey,
                          buttonColor: Colors.white,
                        ),
                      )
                          : ind == 2
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: popularPlaceItem(
                          title: "Latest",
                          textColor: Colors.grey,
                          buttonColor: Colors.white,
                        ),
                      )
                          : const SizedBox.shrink();
                    }),
              ),



                  Container(


                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          child: Stack(
                            children:[ ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/mountain_1.png',
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                                            Positioned(
                                              top: 290,
                                              left: 20,
                                              right: 30,
                                              bottom: 20,
                                              child: Container(
                        // height: 20,
                        // width: 20,
                        color: Colors.blue.shade900.withOpacity(0.9),

                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Mount Fuji, Tokyo',
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Icons.location_on, color: Colors.grey,),
                                  SizedBox(width: 20,),
                                  Text('Tokya, Japan', style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15

                                  ),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.star, color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text('4.8', style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15
                                  ),)
                                ],
                              )

                            ],
                          ),

                        ),


                                              ),
                                            ),
                              Positioned(
                                top: 20,
                                left: 240,
                                right: 20,
                                bottom: 325,
                                child: Container(
                                  // heiht: 20,
                                  // width: 20,
                                  //color: Colors.blue.shade900.withOpacity(0.9),
                                  decoration: BoxDecoration(
                                     color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50),
                                  ),

                                  child: const Icon(CupertinoIcons.heart, color: Colors.white,),


                                ),
                              ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/mask_group.png',
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),




              const SizedBox(height: 20,),

            ],

          ),

        ),

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              size: 40,),
             // backgroundColor: Colors.black,
              //selectedItemColor: Colors.white,

              label: '.',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock,size: 40,),
              backgroundColor: Colors.black,
              label: 'time',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken, size: 40,),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 40,),
              label: 'Profile',
            ),
          ],
        ),
      ),

    );

  }

  Row _viewAllBar() {
    return const  Row(
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(width: 140),
                Text(
                  'View all',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            );
  }
}


// custom appbar
Widget customAppbar(){
  return   Padding(
    padding: const EdgeInsets.fromLTRB(10, 3, 28, 38),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Hi, David',
                  style: TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(pi),
                  child: Icon(
                    Icons.waving_hand_sharp,
                    size: 34,
                    color: Colors.yellow.shade700,
                  ),
                ),
              ],
            ),
            const Text(
              'Explore the world',
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ],
        ),
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/images/profile_placeholder.jpeg"),
          //backgroundColor: Colors.transparent,


          // Image:'assets/images/mask_group.png';
          //   width: 300,
          //   fit: BoxFit.cover,
          // ),

        ),
      ],
    ),
  );
}

// Custom Search Bar Widget
Widget customSearchbar() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 0, 30),
    child: Container(
      height: 50,
      width: double.maxFinite,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white12,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Text('   Search Please'),
          SizedBox(width: 160),

          Icon(Icons.straight_rounded),
          // SvgPicture.asset(
          //   'assets/icons/divider.svg',
          // ),
          SizedBox(width: 50),


          Icon(Icons.cloud_circle),
        ],
      ),
    ),
  );
}

// Popular Place Item Widget
Widget popularPlaceItem({
  Color? textColor,
  Color? buttonColor,
  String? title,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
    child: Container(
     padding: EdgeInsets.only(top: 10, bottom: 3,right: 15,left: 15),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title ?? "default",
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.bold,
        fontSize: 16),
      ),
    ),
  );
}


Widget mountainImages() {
  return Container(

    height: 170,
  );
}
