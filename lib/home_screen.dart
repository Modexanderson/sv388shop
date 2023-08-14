import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sv388shop/eight_section.dart';
import 'package:sv388shop/fourth_section.dart';
import 'package:sv388shop/ninth_section.dart';
import 'package:sv388shop/seventh_section.dart';
import 'package:sv388shop/sixth_section.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    _checkLocationPermission();
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

  bool _isUserInVietnam = false;
  bool _locationPermissionGranted = false;

  Future<void> _checkLocationPermission() async {
    final PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      _getLocationData();
      setState(() {
        _locationPermissionGranted = true;
      });
    }
  }

  Future<void> _getLocationData() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );

    // // Replace these coordinates with the approximate range for Vietnam
    // final double vietnamLatitudeMin = 8.18;
    // final double vietnamLatitudeMax = 23.39;
    // final double vietnamLongitudeMin = 102.14;
    // final double vietnamLongitudeMax = 109.46;
    // final double centerLatitude = 14.0583;
    // final double centerLongitude = 108.2772;

    // Nigeria horizontal centre
    // 9.152194769073454, 7.84736682054858
    // const double centerLatitude = 9.152194769073454;
    // const double centerLongitude = 7.84736682054858;

    // const double radiusLatitude =
    //     9.2531531531531; // 1 degree of latitude is about 111 km
    // const double radiusLongitude =
    //     9.1942342342342; // Approximate value at the equator
    // Vietnam horizontal centre
    // 15.854894516795412, 107.7777377622933
    const double centerLatitude = 15.854894516795412;
    const double centerLongitude = 107.7777377622933;

    const double radiusLatitude =
        8.4405405405405; // 1 degree of latitude is about 111 km
    const double radiusLongitude =
        6.7567567567567; // Approximate value at the equator

    const double vietnamLatitudeMin = centerLatitude - radiusLatitude;
    const double vietnamLatitudeMax = centerLatitude + radiusLatitude;
    const double vietnamLongitudeMin = centerLongitude - radiusLongitude;
    const double vietnamLongitudeMax = centerLongitude + radiusLongitude;

    if (position.latitude >= vietnamLatitudeMin &&
        position.latitude <= vietnamLatitudeMax &&
        position.longitude >= vietnamLongitudeMin &&
        position.longitude <= vietnamLongitudeMax) {
      setState(() {
        _isUserInVietnam = true;
      });
    }
  }

  // Future<void> _checkUserLocation() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.low);

  //   // // Replace these coordinates with the approximate range for Vietnam
  //   // final double vietnamLatitudeMin = 8.18;
  //   // final double vietnamLatitudeMax = 23.39;
  //   // final double vietnamLongitudeMin = 102.14;
  //   // final double vietnamLongitudeMax = 109.46;
  //   // final double centerLatitude = 14.0583;
  //   // final double centerLongitude = 108.2772;
  //   // Nigeria horizontal centre
  //   // 9.152194769073454, 7.84736682054858
  //   final double centerLatitude = 9.152194769073454;
  //   final double centerLongitude = 7.84736682054858;

  //   final double radiusLatitude =
  //       9.2531531531531; // 1 degree of latitude is about 111 km
  //   final double radiusLongitude =
  //       9.1942342342342; // Approximate value at the equator

  //   final double vietnamLatitudeMin = centerLatitude - radiusLatitude;
  //   final double vietnamLatitudeMax = centerLatitude + radiusLatitude;
  //   final double vietnamLongitudeMin = centerLongitude - radiusLongitude;
  //   final double vietnamLongitudeMax = centerLongitude + radiusLongitude;

  //   if (position.latitude >= vietnamLatitudeMin &&
  //       position.latitude <= vietnamLatitudeMax &&
  //       position.longitude >= vietnamLongitudeMin &&
  //       position.longitude <= vietnamLongitudeMax) {
  //     setState(() {
  //       _isUserInVietnam = true;
  //     });
  //   }
  // }

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('http://sv388shop.online/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('http://sv388shop.vn/'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SV388 SHOP'),
        centerTitle: true,
      ),
      body: _locationPermissionGranted
          ? (_isUserInVietnam
              ? WebViewWidget(
                  controller: controller,
                )
              : ListView(children: [
                  FirstSection(remainingSeconds: remainingSeconds),
                  SecondSection(remainingSeconds: remainingSeconds),
                  // Container(
                  //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  //   child: Image.asset('assets/images/image.jpg'),
                  // ),
                  ThirdSection(remainingSeconds: remainingSeconds),
                  const SizedBox(
                    height: 20,
                  ),
                  // Multi images
                  const MultiImages(),
                  const SizedBox(
                    height: 20,
                  ),
                  const FourthSection(),
                  FifthSection(remainingSeconds: remainingSeconds),
                  const SizedBox(
                    height: 30,
                  ),
                  const SixthSection(),
                  const SizedBox(height: 10),
                  const Text(
                    'CAM KẾT THỰC HIỆN CHÍNH SÁCH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SeventhSection(),
                  const SizedBox(height: 20),
                  EightSection(remainingSeconds: remainingSeconds),
                  const SizedBox(height: 20),
                  const NinthSection(makePhoneCall: _makePhoneCall),
                  const SizedBox(height: 20),
                ]))
          : const Center(
              child: CircularProgressIndicator(), // Or any loading indicator
            ),
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
