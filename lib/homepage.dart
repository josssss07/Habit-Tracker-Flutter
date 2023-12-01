// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habit_tracker/util/habit_tlile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //habit list
  List habitList = [
    //[habitname , habitstarted, timegoal, timeSpent]
    ['Exercise', false, 10, 0],
    ['Read', false, 20, 0],
    ['Code', false, 60, 0],
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Consistency is Key.',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: habitList.length,
        itemBuilder: (context, index){
          return HabitTile(
            habitName:  habitList[index][0],
            habitStarted: habitList[index][1], 
            onTap: (){}, 
            settingsTapped:(){} , 
            timeGoal: habitList[index][2], 
            timeSpent: habitList[index][3],
          );
        }
        )
    );
  }
}
