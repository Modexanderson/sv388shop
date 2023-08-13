import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sv388shop/eight_section.dart';
import 'package:sv388shop/fourth_section.dart';
import 'package:sv388shop/ninth_section.dart';
import 'package:sv388shop/seventh_section.dart';
import 'package:sv388shop/sixth_section.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fifth_section.dart';
import 'first_section.dart';
import 'multi_images.dart';
import 'second_section.dart';
import 'third_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void _makePhoneCall() async {
  const phoneNumber = 'tel:0972564781'; // Replace with your phone number
  if (await canLaunch(phoneNumber)) {
    await launch(phoneNumber);
  } else {
    if (kDebugMode) {
      print('Could not launch phone call.');
    }
  }
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('SV388 SHOP'),
        centerTitle: true,
      ),
      body: ListView(children: [
        FirstSection(remainingSeconds: remainingSeconds),
        SecondSection(remainingSeconds: remainingSeconds),
        // Container(
        //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        //   child: Image.asset('assets/images/image.jpg'),
        // ),
        ThirdSection(remainingSeconds: remainingSeconds),
        SizedBox(
          height: 20,
        ),
        // Multi images
        MultiImages(),
        SizedBox(
          height: 20,
        ),
        FourthSection(),
        FifthSection(remainingSeconds: remainingSeconds),
        SizedBox(
          height: 30,
        ),
        SixthSection(),
        SizedBox(height: 10),
        Text(
          'CAM KẾT THỰC HIỆN CHÍNH SÁCH',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SeventhSection(),
        SizedBox(height: 20),
        EightSection(remainingSeconds: remainingSeconds),
        SizedBox(height: 20),
        NinthSection(makePhoneCall: _makePhoneCall),
        SizedBox(height: 20),
      ]),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _makePhoneCall();
          },
          backgroundColor: Colors.orange,
          child: const Icon(
            Icons.phone,
            color: Colors.blue,
          )),
    );
  }
}
