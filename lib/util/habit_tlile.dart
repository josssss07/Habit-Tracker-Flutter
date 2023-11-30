// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  const HabitTile({super.key});

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //task name
                        Text('Data'),

                        //task progress
                        Text('2:00 / 10:00 = 20%'),
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