// import 'package:flutter/material.dart';

// class BubbleDialog extends StatelessWidget {
//   final String message;
//   final Offset position;

//   const BubbleDialog({Key? key, required this.position, required this.message})
//       : super(key: key);
//   void _showBubbleDialog(
//       BuildContext context, Offset position, String message) {
//     showDialog(
//       context: context,
//       builder: (_) {
//         return BubbleDialog(position: position, message: message);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Positioned(
//           top: position.dy - 40,
//           left: position.dx - 8,
//           child: Container(
//             padding: const EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//             child: Text(
//               message,
//               style: const TextStyle(fontSize: 16.0, color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:doantn/modules/homes/thongtin.dart';
import 'package:doantn/modules/homes/tt.dart';
import 'package:flutter/material.dart';

class MoveableButton extends StatefulWidget {
  const MoveableButton({Key? key}) : super(key: key);

  @override
  _MoveableButtonState createState() => _MoveableButtonState();
}

class _MoveableButtonState extends State<MoveableButton> {
  double _top = 5.0;
  double _left = 250.0;

  void _onMove(Offset delta) {
    setState(() {
      _top += delta.dy;
      _left += delta.dx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedPositioned(
          top: _top,
          left: _left,
          duration: const Duration(milliseconds: 300),
          child: GestureDetector(
            onPanUpdate: (details) {
              _onMove(details.delta);
            },
            child: IconButton(
                iconSize: 60,
                color: Color.fromARGB(255, 23, 3, 249),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Detail(),
                    ),
                  );
                },
                icon: Icon(Icons.add_circle_outline)),
            // child: ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color.fromARGB(255, 145, 240, 226),
            //     fixedSize: Size(65, 65),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50.0),
            //     ),
            //   ),
            //   onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (BuildContext context) => const Detail(),
            //   ),
            // );
            //   },
            //   child: const Text('Đặt tour'),
            // ),
          ),
        ),
      ],
    );
  }
}






// import 'package:flutter/material.dart';

// class AnimatedListWidget extends StatefulWidget {
//   @override
//   _AnimatedListWidgetState createState() => _AnimatedListWidgetState();
// }

// class _AnimatedListWidgetState extends State<AnimatedListWidget> with SingleTickerProviderStateMixin {
//   final _items = List.generate(
//     10,
//         (index) => 'Item ${index + 1}',
//   );

//   late AnimationController _controller;
//   late Animation<Offset> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     )
//       ..forward();
//     _animation = Tween<Offset>(
//       begin: Offset(0.0, 1.0),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animated List Widget'),
//       ),
//       body: SizedBox.expand(
//         child: Stack(
//           children: <Widget>[
//             AnimatedBuilder(
//               animation: _animation,
//               builder: (context, child) {
//                 return Positioned(
//                   top: _animation.value.dy * (MediaQuery.of(context).size.height / 2),
//                   left: _animation.value.dx * (MediaQuery.of(context).size.width / 2),
//                   child: Container(),
//                 );
//               },
//               child: SizedBox(
//                 width: 80.0,
//                 height: 80.0,
//                 child: Placeholder(),
//               ),
//             ),
//             AnimatedBuilder(
//               animation: _animation,
//               builder: (context, child) {
//                 return Positioned(
//                   top: _animation.value.dy * (MediaQuery.of(context).size.height / 2) + 100,
//                   left: _animation.value.dx * (MediaQuery.of(context).size.width / 2) + 100,
//                   child: Container(),
//                 );
//               },
//               child: SizedBox(
//                 width: 120.0,
//                 height: 120.0,
//                 child: Placeholder(),
//               ),
//             ),
//             AnimatedBuilder(
//               animation: _animation,
//               builder: (context, child) {
//                 return Positioned(
//                   top: _animation.value.dy * (MediaQuery.of(context).size.height / 2) + 200,
//                   left: _animation.value.dx * (MediaQuery.of(context).size.width / 2) + 200,
//                   child: Container(),
//                 );
//               },
//               child: SizedBox(
//                 width: 160.0,
//                 height: 160.0,
//                 child: Placeholder(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }













// // import 'package:flutter/material.dart';

// // class AnimatedListWidget extends StatefulWidget {
// //   @override
// //   _AnimatedListWidgetState createState() => _AnimatedListWidgetState();
// // }

// // class _AnimatedListWidgetState extends State<AnimatedListWidget> with SingleTickerProviderStateMixin {
// //   final _items = List.generate(
// //     10,
// //         (index) => 'Item ${index + 1}',
// //   );

// //   late AnimationController _controller;
// //   late Animation<Offset> _animation;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(seconds: 2),
// //       vsync: this,
// //     )
// //       ..forward();
// //     _animation = Tween<Offset>(
// //       begin: Offset(0.0, 1.0),
// //       end: Offset.zero,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Animated List Widget'),
// //       ),
// //       body: SizedBox.expand(
// //         child: Stack(
// //           children: <Widget>[
// //             AnimatedBuilder(
// //               animation: _animation,
// //               builder: (context, child) {
// //                 return Positioned(
// //                   top: _animation.value.dy * (MediaQuery.of(context).size.height / 2),
// //                   left: _animation.value.dx * (MediaQuery.of(context).size.width / 2),
// //                   child: child,
// //                 );
// //               },
// //               child: SizedBox(
// //                 width: 80.0,
// //                 height: 80.0,
// //                 child: Placeholder(),
// //               ),
// //             ),
// //             AnimatedBuilder(
// //               animation: _animation,
// //               builder: (context, child) {
// //                 return Positioned(
// //                   top: _animation.value.dy * (MediaQuery.of(context).size.height / 2) + 100,
// //                   left: _animation.value.dx * (MediaQuery.of(context).size.width / 2) + 100,
// //                   child: child,
// //                 );
// //               },
// //               child: SizedBox(
// //                 width: 120.0,
// //                 height: 120.0,
// //                 child: Placeholder(),
// //               ),
// //             ),
// //             AnimatedBuilder(
// //               animation: _animation,
// //               builder: (context, child) {
// //                 return Positioned(
// //                   top: _animation.value.dy * (MediaQuery.of(context).size.height / 2) + 200,
// //                   left: _animation.value.dx * (MediaQuery.of(context).size.width / 2) + 200,
// //                   child: child,
// //                 );
// //               },
// //               child: SizedBox(
// //                 width: 160.0,
// //                 height: 160.0,
// //                 child: Placeholder(),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }









// // // import 'package:flutter/material.dart';

// // // class GenderDropdown extends StatefulWidget {
// // //   @override
// // //   _GenderDropdownState createState() => _GenderDropdownState();
// // // }

// // // class _GenderDropdownState extends State<GenderDropdown> {
// // //   late String gender;

// // //  @override
// // //   void initState() {
// // //     super.initState();
// // //     gender = "Male"; // initialize the gender variable with a default value
// // //   }
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return DropdownButton<String>(
// // //       value: gender,
// // //       onChanged: (String? newValue) {
// // //         setState(() {
// // //           gender = newValue!;
// // //         });
// // //       },
// // //       items: <String>['Male', 'Female', 'Other']
// // //           .map<DropdownMenuItem<String>>((String value) {
// // //         return DropdownMenuItem<String>(
// // //           value: value,
// // //           child: Text(value),
// // //         );
// // //       }).toList(),
// // //     );
// // //   }
// // // }







// // // // // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:photo_view/photo_view.dart';
// // // // import 'package:photo_view/photo_view_gallery.dart';

// // // // class ImageGallery extends StatefulWidget {
// // // //   @override
// // // //   _ImageGalleryState createState() => _ImageGalleryState();
// // // // }

// // // // class _ImageGalleryState extends State<ImageGallery> {
// // // //   List<String> imageURLs = [
// // // //     'assets/images/1.jpg',
// // // //     'assets/images/2.jpg'
// // // //   ];

// // // //   int currentIndex = 0;

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Image Gallery'),
// // // //       ),
// // // //       body: Container(
// // // //         child: PhotoViewGallery.builder(
// // // //           itemCount: imageURLs.length,
// // // //           builder: (BuildContext context, int index) {
// // // //             return PhotoViewGalleryPageOptions(
// // // //               imageProvider: NetworkImage(imageURLs[index]),
// // // //               initialScale: PhotoViewComputedScale.contained * 0.8,
// // // //               minScale: PhotoViewComputedScale.contained * 0.5,
// // // //               maxScale: PhotoViewComputedScale.covered * 2,
// // // //               heroAttributes: PhotoViewHeroAttributes(
// // // //                 tag: 'photo$index',
// // // //                 transitionOnUserGestures: true,
// // // //               ),
// // // //             );
// // // //           },
// // // //           scrollPhysics: const BouncingScrollPhysics(),
// // // //           loadingBuilder: (context, event) => Center(
// // // //             child: Container(
// // // //               width: 30.0,
// // // //               height: 30.0,
// // // //               child: CircularProgressIndicator(
               
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           pageController: PageController(initialPage: currentIndex),
// // // //           onPageChanged: (index) {
// // // //             setState(() {
// // // //               currentIndex = index;
// // // //             });
// // // //           },
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // // // // // class MyPageView extends StatefulWidget {
// // // // // // //   @override
// // // // // // //   _MyPageViewState createState() => _MyPageViewState();
// // // // // // // }

// // // // // // // class _MyPageViewState extends State<MyPageView> {
// // // // // // //   final List<String> items = ["Item 1", "Item 2", "Item 3"];

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text("My PageView"),
// // // // // // //       ),
// // // // // // //       body: PageView.builder(
// // // // // // //         itemCount: items.length,
// // // // // // //         itemBuilder: (context, index) {
// // // // // // //           return Center(
// // // // // // //             child: Text(
// // // // // // //               items[index],
// // // // // // //               style: TextStyle(fontSize: 24),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }


// // // // // // import 'package:flutter/material.dart';

// // // // // // class MoveAndShowContentButton extends StatefulWidget {
// // // // // //   const MoveAndShowContentButton({Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   // ignore: library_private_types_in_public_api
// // // // // //   _MoveAndShowContentButtonState createState() => _MoveAndShowContentButtonState();
// // // // // // }

// // // // // // class _MoveAndShowContentButtonState extends State<MoveAndShowContentButton> {
// // // // // //   bool _isContentVisible = false;

// // // // // //   void _toggleContentVisibility() {
// // // // // //     setState(() {
// // // // // //       _isContentVisible = !_isContentVisible;
// // // // // //     });
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Column(
// // // // // //       children: [
// // // // // //         ElevatedButton(
// // // // // //           onPressed: () {
// // // // // //             _toggleContentVisibility();
// // // // // //           },
// // // // // //           child: const Text('Di chuyển và hiển thị nội dung'),
// // // // // //         ),
// // // // // //         AnimatedContainer(
// // // // // //           duration: const Duration(milliseconds: 500),
// // // // // //           height: _isContentVisible ? 200.0 : 0.0,
// // // // // //           child: _isContentVisible
// // // // // //               ? const Center(
// // // // // //                   child: Text(
// // // // // //                     'Nội dung được hiển thị tại đây',
// // // // // //                     style: TextStyle(fontSize: 18.0),
// // // // // //                   ),
// // // // // //                 )
// // // // // //               : null,
// // // // // //         ),
// // // // // //       ],
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:photo_view/photo_view.dart';
// // // // // import 'package:photo_view/photo_view_gallery.dart';

// // // // // class ImageGallery extends StatefulWidget {
// // // // //   @override
// // // // //   _ImageGalleryState createState() => _ImageGalleryState();
// // // // // }

// // // // // class _ImageGalleryState extends State<ImageGallery> {
// // // // //   List<String> imageURLs = [
// // // // //     'https://picsum.photos/id/0/5616/3744',
// // // // //     'https://picsum.photos/id/1/5616/3744'
// // // // //   ];

// // // // //   int currentIndex = 0;

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Image Gallery'),
// // // // //       ),
// // // // //       body: Container(
// // // // //         child: PhotoViewGallery.builder(
// // // // //           itemCount: imageURLs.length,
// // // // //           builder: (BuildContext context, int index) {
// // // // //             return PhotoViewGalleryPageOptions(
// // // // //               imageProvider: NetworkImage(imageURLs[index]),
// // // // //               initialScale: PhotoViewComputedScale.contained * 0.8,
// // // // //               minScale: PhotoViewComputedScale.contained * 0.5,
// // // // //               maxScale: PhotoViewComputedScale.covered * 2,
// // // // //               heroAttributes: PhotoViewHeroAttributes(
// // // // //                 tag: 'photo$index',
// // // // //                 transitionOnUserGestures: true,
// // // // //               ),
// // // // //             );
// // // // //           },
// // // // //           scrollPhysics: const BouncingScrollPhysics(),
// // // // //           loadingBuilder: (context, event) => Center(
// // // // //             child: Container(
// // // // //               width: 30.0,
// // // // //               height: 30.0,
// // // // //               child: CircularProgressIndicator(
// // // // //                 value: event == null
// // // // //                     ? 0
// // // // //                     : event.cumulativeBytesLoaded / event.expectedTotalBytes,
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //           pageController: PageController(initialPage: currentIndex),
// // // // //           onPageChanged: (index) {
// // // // //             setState(() {
// // // // //               currentIndex = index;
// // // // //             });
// // // // //           },
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

