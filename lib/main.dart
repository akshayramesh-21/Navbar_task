import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavDemo(),
    );
  }
}

class NavDemo extends StatefulWidget {
  NavDemo({super.key});

  @override
  _NavDemoState createState() => _NavDemoState();
}

class _NavDemoState extends State<NavDemo> {
  int _selectedIndex = 0;
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navItems(Icons.home, 'Home', 0 ),
            navItems(Icons.search, 'Search', 1),
             navItems(Icons.person, 'Alarm', 2 ),
              navItems(Icons.settings, 'Settings', 3 ),
           

          ],
        ),
      ),
    );
  }

  Widget navItems(IconData icon, String label, int index,) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => valueData(index),
      child: Container(
        decoration: BoxDecoration(color: isSelected ?Colors.black  :Colors.white,
          borderRadius: BorderRadius.circular(20)),
        
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.white : Colors.black),
            if (isSelected)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  label,
                  style: TextStyle(color: isSelected ? Colors.white : Colors.black),
                ),
              ),
          ],
        ),
      ),
    );
  }
   void valueData(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
