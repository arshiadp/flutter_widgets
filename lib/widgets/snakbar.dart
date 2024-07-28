import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snakbar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: const Text("show snakcbar"),
            onPressed: () {
              var snackbar = SnackBar(
                action: SnackBarAction(
                  label: "undo",
                  textColor: Colors.blue,
                  onPressed: () {},
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                behavior: SnackBarBehavior.floating,
                //padding: EdgeInsets.all(20),
                duration: const Duration(milliseconds: 3000),
                //backgroundColor: Colors.red,
                content: const Text('this is a error'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
          ),
        ),
      ),
    );
  }
}
