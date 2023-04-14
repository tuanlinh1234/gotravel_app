// import 'dart:async';
// import 'package:flutter/material.dart';

// class AutoScrollPageView extends StatefulWidget {
//   final List<Widget> children;
//   final Duration duration;
//   final Curve curve;

//   AutoScrollPageView({
//     required this.children,
//     this.duration = const Duration(seconds: 2),
//     this.curve = Curves.easeInOut,
//   });

//   @override
//   _AutoScrollPageViewState createState() => _AutoScrollPageViewState();
// }

// class _AutoScrollPageViewState extends State<AutoScrollPageView> {
//   final PageController _controller = PageController();
//   int _currentPageIndex = 0;
//   late Timer _timer;

//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   @override
//   void dispose() {
//     cancelTimer();
//     super.dispose();
//   }

//   void startTimer() {
//     _timer = Timer.periodic(widget.duration, (timer) {
//       if (_currentPageIndex == widget.children.length - 1) {
//         _currentPageIndex = 0;
//         _controller.animateToPage(
//           0,
//           duration: Duration(milliseconds: 500),
//           curve: widget.curve,
//         );
//       } else {
//         _currentPageIndex++;
//         _controller.nextPage(
//           duration: Duration(milliseconds: 500),
//           curve: widget.curve,
//         );
//       }
//     });
//   }

//   void cancelTimer() {
//     _timer?.cancel();
//     // _timer = null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       controller: _controller,
//       children: widget.children,
//       onPageChanged: (int index) {
//         setState(() {
//           _currentPageIndex = index;
//         });
//       },
//     );
//   }
// }
