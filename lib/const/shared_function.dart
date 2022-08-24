// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:lottie/lottie.dart';

// positiveToast(String text) => Fluttertoast.showToast(
//     msg: " $text! ",
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: Colors.green,
//     textColor: Colors.white,
//     fontSize: 16.0);
// negetiveToast(String text) => Fluttertoast.showToast(
//     msg: " $text! ",
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: Colors.red,
//     textColor: Colors.white,
//     fontSize: 16.0);
// Future<dynamic> generateVideoThumbnail(File file) async =>
//     await VideoThumbnail.thumbnailData(
//       video: file.path,
//       imageFormat: ImageFormat.PNG,
//       maxWidth:
//           256, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
//       quality: 50,
//     );
// String memoryImageToBase64(Uint8List uint8list) {
//   String base64String = base64Encode(uint8list);
//   String header = "data:image/png;base64,";
//   print(header);
//   return header + base64String;
// }

// dynamic showProgressDialog(context, [String label = "Please Wait!!!"]) =>
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return Dialog(
//               insetPadding: EdgeInsets.all(0),
//               elevation: 0,
//               backgroundColor: Colors.transparent,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0)),
//               child: Padding(
//                 padding: const EdgeInsets.all(24),
//                 child: Text('data'),
//               ));
//           // Navigator.pop(context);
//         });
// Widget MyProgressBar() => Lottie.asset(
//       'assets/icon/user.png',
//       width: 200,
//       height: 200,
//       fit: BoxFit.fill,
//     );
