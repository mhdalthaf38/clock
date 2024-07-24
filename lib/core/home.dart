import 'package:clock_app/core/ClockPage.dart';
import 'package:clock_app/core/StopwatchPage.dart';
import 'package:clock_app/core/TimerPage.dart';
import 'package:clock_app/core/alarmpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  final pages = [Alarmpage(), Clockpage(), Timerpage(), Stopwatchpage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newindex) {
            setState(() {
              _currentindex = newindex;
            });
          },
          currentIndex: _currentindex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
            BottomNavigationBarItem(
                icon: Icon(Icons.punch_clock_outlined), label: 'Clock'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timelapse_sharp), label: 'Timer'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timer_outlined), label: 'Stopwatch'),
          ]),
    );
  }
}
