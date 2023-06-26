//Create a class for a timer that runs in the background and sends notifications when it's done.
import 'dart:async';

import 'package:flutter/material.dart';



class BackgroundTimer {
  int _seconds = 0;
  final _streamController = StreamController<int>.broadcast();
  Timer? _timer;

  Stream<int> get stream => _streamController.stream;

  void start(int duration) {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _seconds++;
      _updateSeconds();
    });
  }

  void _updateSeconds() {
    // stop counting after the duration is over
    if (_seconds >= duration) {
      _timer?.cancel();
      _streamController.sink.add(_seconds);
      _showNotification();
    } else {
      _streamController.sink.add(_seconds);
    }
  }

  void _showNotification() {
    // show a notification to the user
    const notification = Notification(
      title: 'Timer',
      body: 'Timer is done!',
    );
    // show the notification
    _streamController.sink.add(notification as int);
  }
}
