// import 'package:flutter/material.dart';

// class View extends StatefulWidget {
//   const View({super.key});

//   @override
//   State<View> createState() => _ViewState();
// }

// class _ViewState extends State<View> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'FirstApp',
//           style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 250,
//                 child: Card(
//                     color: Colors.white, elevation: 20, 
                    
//                     child: ListView(
                      
//                     )
//                     ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Padding(padding: EdgeInsets.all(19.0),
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//             height:350,
//             child: Card(
//               color: Colors.amber,
//               elevation: 40,
//               child:ListView.builder(itemBuilder: ((context, index) {
//                 return Card(
//                   child:ListTile(
//                     title: Text([index]),
//                   ));
//               },
//               )
//             )
//             )
//             )
//             )
//           ]
//         )
//       )
//     );
//   }
// }