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
  //List HabitList,

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
      body: Column(
        children: [
          HabitTile(habitName: 'Coding', habitStarted: false, onTap: (){}, settingsTapped: (){}, timeGoal: 20, timeSpent: 1)
        ],
      ),
    );
  }
}
