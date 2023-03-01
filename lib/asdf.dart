// import 'dart:async';

// import 'package:flutter/material.dart';

// class StopWatchTimerPage extends StatefulWidget {
//   @override
//   _StopWatchTimerPageState createState() => _StopWatchTimerPageState();
// }

// class _StopWatchTimerPageState extends State<StopWatchTimerPage> {
//   static const countdownDuration = Duration(minutes: 10);
//   Duration duration = Duration();
//   Timer? timer;

//   bool countDown = true;

//   @override
//   void initState() {
//     super.initState();
//     reset();
//   }

//   void reset() {
//     if (countDown) {
//       setState(() => duration = countdownDuration);
//     } else {
//       setState(() => duration = Duration());
//     }
//   }

//   void startTimer() {
//     timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
//   }

//   void addTime() {
//     final addSeconds = countDown ? -1 : 1;
//     setState(() {
//       final seconds = duration.inSeconds + addSeconds;
//       if (seconds < 0) {
//         timer?.cancel();
//       } else {
//         duration = Duration(seconds: seconds);
//       }
//     });
//   }

//   void stopTimer({bool resets = true}) {
//     if (resets) {
//       reset();
//     }
//     setState(() => timer?.cancel());
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//     backgroundColor: Colors.orange[50],
//     appBar: AppBar(
//       automaticallyImplyLeading: false,
//       title: Text(''),
//     ),
//   )
// }