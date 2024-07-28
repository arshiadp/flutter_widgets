import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'press me!',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            style: ButtonStyle(
                padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                overlayColor: WidgetStateProperty.all(Colors.lightBlue),
                elevation: WidgetStateProperty.all(20),
                backgroundColor: WidgetStateProperty.all(Colors.yellow)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            onPressed: () {},
            child: const Text(
              "Like",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
