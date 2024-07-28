// import 'package:flutter/material.dart';

// class DismissibkeWidget extends StatefulWidget {
//   const DismissibkeWidget({super.key});

//   @override
//   State<DismissibkeWidget> createState() => _DismissibkeWidgetState();
// }

// class _DismissibkeWidgetState extends State<DismissibkeWidget> {
//   List<String> fruits = ['orange', 'apple', 'mango', 'lime', 'banana'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dismissble Package'),
//       ),
//       body: ListView.builder(
//           itemCount: fruits.length,
//           itemBuilder: (context, index){
//             final fruit = fruits[index];
//             onDismissed: (diraction){if (diraction==DismissDirection.startToEnd){ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),),);}};
//             return Dismissible(key: Key(fruit), child: child)
//           },
              
//         ),
//     );
//   }
// }
