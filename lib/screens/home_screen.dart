import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footColor,
        items: const  [
          BottomNavigationBarItem(icon: Icon(Icons.comment_bank),label: 'Meet & Chat '),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock),label: 'Meetings '),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Contacts '),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings ')
        ],
      ),
    );
  }
}