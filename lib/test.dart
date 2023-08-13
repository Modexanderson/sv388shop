// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:sv388shop/timer_container.dart';

// // class CountdownValueNotifier extends ValueNotifier<int> {
// //   CountdownValueNotifier(int value) : super(value);
// // }

// // final countdownValueNotifier = CountdownValueNotifier(10 * 3600);

// // class CountdownTimerWidget extends StatefulWidget {
// //   @override
// //   _CountdownTimerWidgetState createState() => _CountdownTimerWidgetState();
// // }

// // class _CountdownTimerWidgetState extends State<CountdownTimerWidget> {
// //   late CountdownValueNotifier countdownValue;

// //   @override
// //   void initState() {
// //     super.initState();
// //     countdownValue = countdownValueNotifier;

// //     // Start the countdown timer
// //     Timer.periodic(const Duration(seconds: 1), (timer) {
// //       if (countdownValue.value > 0) {
// //         countdownValue.value--;
// //       }
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     countdownValue.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     int totalSeconds = countdownValue.value;
// //     int days = totalSeconds ~/ 86400;
// //     int hours = (totalSeconds % 86400) ~/ 3600;
// //     int minutes = (totalSeconds % 3600) ~/ 60;
// //     int seconds = totalSeconds % 60;

// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Text('$days days '),
// //         Text('$hours hours '),
// //         Text('$minutes minutes '),
// //         Text('$seconds seconds'),
// //       ],
// //     );
// //   }
// // }

// // class Page1 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Page 1')),
// //       body: Column(
// //         children: [
// //           Center(
// //             child: CountdownTimerWidget(),
// //           ),
// //           Page2(),
// //           TimerContainer(isCentered: true)
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class Page2 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(child: CountdownTimerWidget());
// //   }
// // }

// class MyPageView extends StatefulWidget {
//   @override
//   _MyPageViewState createState() => _MyPageViewState();
// }

// class _MyPageViewState extends State<MyPageView> {
//   PageController _pageController = PageController();

//   ValueNotifier<int> countdownValueNotifier = ValueNotifier<int>(10 * 3600);

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PageView with Timer'),
//       ),
//       body: PageView.builder(
//         controller: _pageController,
//         itemCount: 3, // Number of pages
//         itemBuilder: (context, index) {
//           return TimerContainer(
//             isCentered: true,
//             color: Colors.blue,
//             countdownValueNotifier: countdownValueNotifier,
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           countdownValueNotifier.value -= 1; // Update countdown value
//         },
//         child: Icon(Icons.remove),
//       ),
//     );
//   }
// }
