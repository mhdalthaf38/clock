import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

class Alarmpage extends StatefulWidget {
  const Alarmpage({super.key});

  @override
  State<Alarmpage> createState() => _AlarmpageState();
}

class _AlarmpageState extends State<Alarmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alarm',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.green,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: AnalogClock(
                  secondHandColor: Colors.red,
                  minuteHandColor: Colors.grey,
                ),
              )),
        ],
      ),
    );
  }
}
