import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Banana', 'Mango'];
  Map fruitsPerson = {
    'fruits': ['Orange', 'Apple', 'Banana', 'Mango'],
    "names": ['karen', 'arshia', 'mmd', 'sareh'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list and grid'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) => Card(
        //     child: ListTile(
        //       leading: const Icon(Icons.person),
        //       title: Text(fruits_person[fruits][index]),
        //       subtitle: Text(fruits_person['names'][index]),
        //     ),
        //   ),
        // ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 2 / 3),
          children: const [
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
          ],
        ),
      ),
    );
  }
}
