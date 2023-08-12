import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sv388shop/animated_text.dart';
import 'package:sv388shop/animated_texts_button.dart';
import 'package:sv388shop/comment_entity.dart';
import 'package:sv388shop/eight_section.dart';
import 'package:sv388shop/fourth_section.dart';
import 'package:sv388shop/ninth_section.dart';
import 'package:sv388shop/policy_object.dart';
import 'package:sv388shop/review_entity.dart';
import 'package:sv388shop/seventh_section.dart';
import 'package:sv388shop/sixth_section.dart';
import 'package:sv388shop/timer_container.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_listtile.dart';
import 'fifth_section.dart';
import 'first_section.dart';
import 'flash_sale_chipper.dart';
import 'multi_images.dart';
import 'second_section.dart';
import 'text_container.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SV388 SHOP'),
        centerTitle: true,
      ),
      body: ListView(children: const [
        FirstSection(),
        SecondSection(),
        // Container(
        //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        //   child: Image.asset('assets/images/image.jpg'),
        // ),
        ThirdSection(),
        SizedBox(
          height: 20,
        ),
        // Multi images
        MultiImages(),
        SizedBox(
          height: 20,
        ),
        FourthSection(),
        FifthSection(),
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
        EightSection(),
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
