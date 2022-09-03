// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Check extends StatefulWidget {
//   const Check({Key? key}) : super(key: key);

//   @override
//   State<Check> createState() => _CheckState();
// }

// var isChecked;
// var isChecked2;
// var isChecked3;
// var isChecked4;

// class _CheckState extends State<Check> {
//   String newValue = "";
//   List<bool> _isShow = [false, false, false];

//   String dropdownvalue = 'ProductA';
//   var items = [
//     'ProductA',
//   ];

//   @override
//   void initState() {
//     super.initState();

//     isChecked = false;
//     isChecked2 = false;
//     isChecked3 = false;
//     isChecked4 = false;
//   }

//   //var _isShow;
//   List<DropdownMenuItem<String>> list = [
//     DropdownMenuItem(
//         value: "value3",
//         child: Container(
//             child: Row(children: [
//           const Icon(
//             Icons.portrait_outlined,
//             size: 70,
//           ),
//           Column(
//             children: [
//               const Text(
//                 "SKU:ABC-123",
//                 style: const TextStyle(color: Colors.black, fontSize: 10),
//               ),
//               const Text(
//                 "         UPC:2345678945678",
//                 style: const TextStyle(color: Colors.black, fontSize: 10),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Serge Basics",
//                 style: TextStyle(color: Colors.black, fontSize: 10),
//               ),
//             ],
//           ),
//         ]))),
//     DropdownMenuItem(
//         value: "value3",
//         child: Container(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(children: [
//               Column(
//                 children: [
//                   const SizedBox(
//                     height: 2,
//                   ),
//                   Row(
//                     children: [
//                       const Text(
//                         "Bucket: 098765432-678",
//                         style: TextStyle(color: Colors.black, fontSize: 8),
//                       ),
//                       Checkbox(
//                           value: isChecked2,
//                           checkColor: Colors.white,
//                           activeColor: Colors.blue,
//                           tristate: true,
//                           onChanged: (val) {
//                             (() async {
//                               isChecked2 = val;
//                             });
//                           }),
//                       SizedBox(
//                         width: 42,
//                       ),
//                       const Icon(
//                         Icons.lock,
//                         color: Colors.black,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   const SizedBox(
//                     height: 2,
//                   ),
//                   Row(
//                     children: [
//                       const Text(
//                         "Scan Bucket",
//                         style: TextStyle(color: Colors.black, fontSize: 8),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),

//               const SizedBox(
//                 width: 20,
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   DialogExample(),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         "Required Quantity:2",
//                         style: const TextStyle(
//                             color: Colors.black,
//                             fontSize: 5,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const Text(
//                         "Picked Quantity:0",
//                         style: const TextStyle(color: Colors.red, fontSize: 8),
//                       )
//                     ],
//                   ),
//                 ],
//               ),

//               // Row complete
//             ]),
//             //new row
//             // SizedBox(
//             //   height: 10,
//             // ),
//           ],
//         ))),
//     DropdownMenuItem(
//         value: "value5",
//         child: Container(
//             child: Column(
//           children: [
//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//               Column(
//                 children: [
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text(
//                     "Bucket: 098765432",
//                     style: const TextStyle(color: Colors.black, fontSize: 8),
//                   ),
//                   Row(
//                     children: [
//                       const Text(
//                         "Scan Bucket",
//                         style:
//                             const TextStyle(color: Colors.black, fontSize: 8),
//                       ),
//                       smallscan()
//                     ],
//                   ),
//                 ],
//               ),
//               // Checkbox(
//               //     value: isChecked4,
//               //     checkColor: Colors.white,
//               //     activeColor: Colors.blue,
//               //     tristate: true,
//               //     onChanged: (val) {
//               //       (() async {
//               //         isChecked4 = val;
//               //       });
//               //     }),
//               const SizedBox(
//                 width: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   const Icon(
//                     Icons.lock,
//                     color: Colors.black,
//                   ),
//                   DialogExample(),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         "Required Quantity:2",
//                         style: const TextStyle(
//                             color: Colors.black,
//                             fontSize: 5,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const Text(
//                         "Picked Quantity:0",
//                         style: const TextStyle(color: Colors.red, fontSize: 8),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               // Checkbox(
//               //     value: isChecked3,
//               //     checkColor: Colors.white,
//               //     activeColor: Colors.blue,
//               //     tristate: true,
//               //     onChanged: (val) {
//               //       (() async {
//               //         isChecked3 = val;
//               //       });
//               //     }),
//             ]),
//           ],
//         ))),
//     DropdownMenuItem(
//         value: "",
//         child: Container(
//             child: Row(
//           children: [
//             const Text("ProductA", style: TextStyle(color: Colors.black)),
//             const SizedBox(width: 80),
//             // CheckBox here
//             // Checkbox(
//             //     value: isChecked2,
//             //     checkColor: Colors.white,
//             //     activeColor: Colors.blue,
//             //     tristate: true,
//             //     onChanged: (val) {
//             //       (() async {
//             //         isChecked2 = val;
//             //       });
//             //     }),
//           ],
//         ))),
//   ];

//   String? _chosenValue;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("PICK"),
//       ),
//       body: ListView(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "SCAN THE PRODUCTS",
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           Container(
//               padding: const EdgeInsets.only(left: 7.0, right: 2.0),
//               decoration: BoxDecoration(
//                   color: Colors.grey.shade300,
//                   border: const Border.symmetric(),
//                   borderRadius: BorderRadius.circular(12)),
//               // Headings
//               child: Row(
//                 children: [
//                   Column(children: [
//                     const SizedBox(
//                       width: 35,
//                     ),
//                     const Text(
//                       "P",
//                       style: const TextStyle(fontSize: 12.0),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text(
//                       "4",
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                   ]),
//                   const SizedBox(
//                     width: 70,
//                   ),
//                   Column(children: [
//                     const Text(
//                       "N",
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text(
//                       "2",
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                   ]),
//                   const SizedBox(
//                     width: 70,
//                   ),
//                   Column(children: [
//                     const Text(
//                       "B",
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text(
//                       "5",
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                   ]),
//                   const SizedBox(
//                     width: 40,
//                   ),
//                   Column(children: [
//                     const SizedBox(
//                       width: 130,
//                     ),
//                     IconButton(
//                         color: Colors.black,
//                         iconSize: 20,
//                         icon: const Icon(Icons.qr_code_scanner_sharp),
//                         onPressed: () {
//                           setState(
//                             () {
//                               _isShow[0] = true;
//                             },
//                           );

//                           showDialog(
//                               context: context,
//                               builder: (context) => AlertDialog(
//                                     title: const Text('Scan a Bucket Barcode'),
//                                     actions: [
//                                       Center(
//                                         child: new IconButton(
//                                           icon: const Icon(
//                                             Icons.qr_code_sharp,
//                                             size: 50.0,
//                                           ),
//                                           highlightColor: Colors.pink,
//                                           onPressed: () {},
//                                         ),
//                                       ),
//                                       const SizedBox(height: 20),
//                                       Center(
//                                         child: Container(
//                                           height: 40,
//                                           width: 200,
//                                           decoration: BoxDecoration(
//                                               border: Border.all(
//                                             color: Colors.grey,
//                                             width: 1,
//                                           )),
//                                         ),
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.end,
//                                         children: [
//                                           Container(
//                                             child: TextButton(
//                                               child: const Text('accept'),
//                                               onPressed: (() =>
//                                                   Navigator.pop(context)),
//                                             ),
//                                           ),
//                                           Container(
//                                             child: TextButton(
//                                               child: const Text('cancel'),
//                                               onPressed: (() =>
//                                                   Navigator.pop(context)),
//                                             ),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ));
//                         }),
//                     const Text(
//                       "Scan Location",
//                       style: const TextStyle(fontSize: 10.0),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     ///// Checkbox /////
//                     Checkbox(
//                         value: isChecked,
//                         checkColor: Colors.white,
//                         activeColor: Colors.blue,
//                         tristate: true,
//                         onChanged: (newBool) {
//                           setState(() {
//                             isChecked = newBool;
//                           });
//                         })
//                   ]),
//                 ],
//               )),
//           const SizedBox(
//             height: 7,
//           ),
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(),
//                 borderRadius: BorderRadius.circular(12)),
//             child: DropdownButton<String>(
//               focusColor: Colors.white,
//               value: "",
//               //elevation: 5,
//               style: const TextStyle(color: Colors.white),
//               iconEnabledColor: Colors.black,
//               items: list,

//               onChanged: (value) {
//                 setState(() {
//                   _chosenValue = value;
//                 });
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 0.5,
//           ),
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(),
//                 borderRadius: BorderRadius.circular(12)),
//             child: DropdownButton<String>(
//               focusColor: Colors.white,
//               value: "",
//               //elevation: 5,
//               style: const TextStyle(color: Colors.white),
//               iconEnabledColor: Colors.black,
//               items: list,

//               onChanged: (value) {
//                 setState(() {
//                   _chosenValue = value;
//                 });
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 0.5,
//           ),
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(),
//                 borderRadius: BorderRadius.circular(12)),
//             child: DropdownButton<String>(
//               focusColor: Colors.white,
//               value: "",
//               //elevation: 5,
//               style: const TextStyle(color: Colors.white),
//               iconEnabledColor: Colors.black,
//               items: list,

//               onChanged: (value) {
//                 setState(() {
//                   _chosenValue = value;
//                 });
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 90,
//           ),
//           ElevatedButton(
//             child: const Text('Continue'),
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//                 primary: const Color.fromARGB(255, 61, 109, 222),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//                 textStyle:
//                     const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("1/4"),
//             ],
//           ),
//         ],
//         padding: const EdgeInsets.all(10),
//       ),
//     );
//   }
// }

// mixin T {}

// class DialogExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () => showDialog<String>(
//         context: context,
//         builder: (BuildContext context) => AlertDialog(
//           title: const Text('Scan a Bucket Barcode'),
//           actions: <Widget>[
//             Center(
//               child: new IconButton(
//                 icon: const Icon(
//                   Icons.qr_code_sharp,
//                   size: 50.0,
//                 ),
//                 highlightColor: Colors.pink,
//                 onPressed: () {},
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Container(
//                 height: 40,
//                 width: 200,
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                   color: Colors.grey,
//                   width: 1,
//                 )),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   child: TextButton(
//                     child: Text('accept'),
//                     onPressed: (() => Navigator.pop(context)),
//                   ),
//                 ),
//                 Container(
//                   child: TextButton(
//                     child: Text('cancel'),
//                     onPressed: (() => Navigator.pop(context)),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       child: Icon(
//         Icons.qr_code_scanner_sharp,
//         size: 20,
//         color: Colors.black,
//       ),
//     );
//   }
// }

// class smallscan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 1, bottom: 5),
//       child: IconButton(
//         onPressed: () => showDialog<String>(
//           context: context,
//           builder: (BuildContext context) => AlertDialog(
//             title: const Text('Scan a Bucket Barcode'),
//             actions: <Widget>[
//               Center(
//                 child: new IconButton(
//                   icon: const Icon(
//                     Icons.qr_code_sharp,
//                     size: 50.0,
//                   ),
//                   highlightColor: Colors.pink,
//                   onPressed: () {},
//                 ),
//               ),
//               SizedBox(height: 20),
//               Center(
//                 child: Container(
//                   height: 40,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                     color: Colors.grey,
//                     width: 1,
//                   )),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     child: TextButton(
//                       child: Text('accept'),
//                       onPressed: (() => Navigator.pop(context)),
//                     ),
//                   ),
//                   Container(
//                     child: TextButton(
//                       child: Text('cancel'),
//                       onPressed: (() => Navigator.pop(context)),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//         icon: Icon(
//           Icons.qr_code_scanner_sharp,
//           size: 15,
//           color: Colors.black,
//         ),
//       ),
//     );
//   }
// }
