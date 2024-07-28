import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Colors.blueGrey,
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQWEnzFCV_pu380BA50rg0CQmqVPyqXOuRyA&s'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'amin freeman',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text('email address')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('my files'),
                ),
                const ListTile(
                  leading: Icon(Icons.group),
                  title: Text('shared with me'),
                ),
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('starred'),
                ),
                const ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Trash'),
                ),
                const ListTile(
                  leading: Icon(Icons.upload),
                  title: Text('uploads'),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.share),
                  title: Text('share'),
                ),
                const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('log out'),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Drawer Widget'),
        ),
        body: Container(
          child: const Center(
            child: Text('hi buddy'),
          ),
        ));
  }
}
