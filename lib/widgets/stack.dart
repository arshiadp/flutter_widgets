import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/jake-hailstone-wP0pqxZmRmo-unsplash.jpg'),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
              left: 20,
              top: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blueAccent,
              ))
        ],
      ),
      // body: Container(
      //   color: Colors.blue,
      //   child: Center(
      //     child: Stack(
      //       children: [
      //         Positioned(
      //           bottom: 10,
      //           left: 50,
      //           child: Container(
      //             height: 300,
      //             width: 300,
      //             color: Colors.yellow,
      //           ),
      //         ),
      //         Positioned(
      //           top: 40,
      //           right: 70,
      //           child: Container(
      //             height: 150,
      //             width: 150,
      //             color: Colors.red,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             height: 50,
      //             width: 50,
      //             color: Colors.green,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
