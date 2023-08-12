import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimerContainer extends StatefulWidget {
  final bool isCentered;
  final color;
  const TimerContainer({required this.isCentered, this.color, super.key});

  @override
  State<TimerContainer> createState() => _TimerContainerState();
}

class _TimerContainerState extends State<TimerContainer> {
  int initialHours = 10;
  late int remainingSeconds;

  late SharedPreferences _prefs;
  late DateTime _timerStartTime;

  @override
  void initState() {
    super.initState();
    remainingSeconds = initialHours * 3600;
    _initPrefs();
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        remainingSeconds = (remainingSeconds - 1) % (initialHours * 3600 + 1);
      });
      _saveStartTime();
    });
  }

  Future<void> _saveStartTime() async {
    await _prefs.setInt(
        'timerStartTime', DateTime.now().millisecondsSinceEpoch);
  }

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    final timestamp = _prefs.getInt('timerStartTime') ??
        DateTime.now().millisecondsSinceEpoch;
    _timerStartTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    setState(() {
      remainingSeconds = _calculateRemainingSeconds();
    });
  }

  int _calculateRemainingSeconds() {
    final currentTime = DateTime.now();
    final elapsedMilliseconds =
        currentTime.difference(_timerStartTime).inMilliseconds;
    return (initialHours * 3600) - (elapsedMilliseconds ~/ 1000);
  }

  //  String formatTime(int hours, int minutes, int seconds) {
  //   return '${hours.toString().padLeft(2, '0')}h ${minutes.toString().padLeft(2, '0')}m ${seconds.toString().padLeft(2, '0')}s';
  // }

  @override
  Widget build(BuildContext context) {
    int days = remainingSeconds ~/ 86400;
    int hours = (remainingSeconds % 86400) ~/ 3600;
    int minutes = (remainingSeconds % 3600) ~/ 60;
    int seconds = remainingSeconds % 60;

    return Row(
      mainAxisAlignment: widget.isCentered
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.grey, // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(10), // Add padding inside the rectangle
              child: Text(
                days.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text('Ngày',
                style: widget.color != null
                    ? TextStyle(color: widget.color)
                    : null)
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.grey, // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(10), // Add padding inside the rectangle
              child: Text(
                hours.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text('Giờ',
                style: widget.color != null
                    ? TextStyle(color: widget.color)
                    : null)
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.grey, // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(10), // Add padding inside the rectangle
              child: Text(
                textAlign: TextAlign.center,
                minutes.toString(),
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text('Phút',
                style: widget.color != null
                    ? TextStyle(color: widget.color)
                    : null)
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50, // Set the width of the rectangle
              height: 50, // Set the height of the rectangle
              color: Colors.grey, // Set the color of the rectangle
              padding:
                  const EdgeInsets.all(10), // Add padding inside the rectangle
              child: Text(
                textAlign: TextAlign.center,
                seconds.toString(),
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text('Giây',
                style: widget.color != null
                    ? TextStyle(color: widget.color)
                    : null),
          ],
        ),
      ],
    );
  }
}
