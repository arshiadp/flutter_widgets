import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Container and sizedbox"),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.blue,
                //shape: BorderRadius.circule
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 20, spreadRadius: 5, color: Colors.black),
                ]),
            child: Center(
              child: Container(
                color: Colors.red,
              ),
            )
            //const Text(  'hi',   style: TextStyle(fontSize: 30), ),
            ),
      ),
      //const Center(
      //   child: SizedBox(
      //     height: 50,
      //     width: 50,
      //     child: Text('hi'),
      //   ),
      // ),
    );
  }
}
//padding : is space from inside.
//margin:  is space from outside.