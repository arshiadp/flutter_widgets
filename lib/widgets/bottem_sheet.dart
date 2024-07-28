import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Sheet widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('show bottom sheet'),
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(15))),
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0, //show part is gone
                isDismissible:
                    false, //if we touch the background is not going down
                enableDrag: true, //draging  bottomsheet
                context: context,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('orange'),
                        subtitle: Text("arshia1"),
                      ),
                      ListTile(
                        title: Text('apple'),
                        subtitle: Text("arshia2"),
                      ),
                      ListTile(
                        title: Text('banana'),
                        subtitle: Text("arshia3"),
                      ),
                      ListTile(
                        title: Text('mango'),
                        subtitle: Text("arshia4"),
                      ),
                      ListTile(
                        title: Text('tomato'),
                        subtitle: Text("arshia5"),
                      ),
                      ListTile(
                        title: Text('cranbary'),
                        subtitle: Text("arshia6"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
