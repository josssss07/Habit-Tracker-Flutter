// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitTile extends StatelessWidget {
  HabitTile({
    super.key,
    required this.habitName,
    });

  //habit variables
  String habitName;


  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20) ,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200]
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //habit circle
                    Row(children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Stack(
                          children: [
                            Center(child: CircularPercentIndicator(radius: 30)),
                            Center(
                              child: Icon(Icons.play_arrow)
                              ),
                        ],
                        ),
                      ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //task name
                        Text(
                          habitName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19
                          ),
                        ),

                        //task progress
                        Text(
                          '2:00 / 10:00 = 20%',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                          ),
                      ],
                    ),  
                    ],
                    ),
                    Icon(Icons.settings),
                  ],
                ),
              ),
            ),
          );
  }
}