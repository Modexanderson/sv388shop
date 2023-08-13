import 'dart:async';
import 'package:flutter/material.dart';

class TimerManager {
  final remainingTime = ValueNotifier<int>(0);

  TimerManager() {
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      remainingTime.value -= 1;
    });
  }
}
