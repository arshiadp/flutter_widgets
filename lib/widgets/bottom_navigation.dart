import 'package:basic_madan/widgets/rows_coulmns.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;
  PageController pageController = PageController();

  // List<Widget> widgtes = [
  //   const Text('Home'),
  //   const Text('Search'),
  //   const Text('Add'),
  //   const Text('Profile'),
  // ];

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottom navigation'),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AlertDialog(),
          RowsCols(),
          //,
          //
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: ('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: ('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: ('Profile'),
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        onTap: onItemTapped,
      ),
    );
  }
}
