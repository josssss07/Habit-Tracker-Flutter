// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitTile extends StatelessWidget {
  HabitTile({
    super.key,
    required this.habitName,
    required this.habitStarted,
    required this.onTap,
    required this.settingsTapped,
    required this.timeGoal,
    required this.timeSpent
    });

  final VoidCallback onTap;
  final VoidCallback settingsTapped;
  late int timeSpent;
  late int timeGoal;
  bool habitStarted;
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
                      GestureDetector(
                        onTap: onTap,
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Stack(
                            children: [
                              Center(child: CircularPercentIndicator(radius: 30)),
                              GestureDetector(
                                onTap: onTap,
                                child: Center(
                                  child:Icon(habitStarted? Icons.pause : Icons.play_arrow)
                                  ),
                              ),
                          ],
                          ),
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
                          timeSpent.toString() + ' / '+ timeGoal.toString(),
                          style: TextStyle(
                            color: Colors.grey
                          ),
                          ),
                      ],
                    ),  
                    ],
                    ),
                    GestureDetector
                    (
                      onTap: settingsTapped,
                      child: Icon(Icons.settings)
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}