import 'package:flutter/material.dart';
import 'package:untitled2/home/home.dart';
import 'package:untitled2/theme.dart';
import 'home/home.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: const Home(),
  ));
}


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'YOUR CHARACTER'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         title: Text(
//           widget.title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Container(
//         color: Colors.grey[850],
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               const SizedBox(height: 30),
//
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 20),
//                   child: Text(
//                     "CHARACTER LEFT",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 20),
//                   child: Text(
//                     "CHARACTER LEFT",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 20),
//                   child: Text(
//                     "CHARACTER LEFT",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//
//               // Red Button
//               ElevatedButton(
//                 onPressed: () {
//                   // Add your button action here
//                   debugPrint('Create New button pressed');
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red, // Red background
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 24, // Horizontal padding
//                     vertical: 12, // Vertical padding
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8), // Rounded corners
//                   ),
//                 ),
//                 child: const Text(
//                   'CREATE NEW',
//                   style: TextStyle(
//                     color: Colors.white, // White text
//                     fontSize: 28, // Text size
//                     fontWeight: FontWeight.bold,
// // Bold text
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
