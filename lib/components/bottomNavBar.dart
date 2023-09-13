// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// class bottomNavBar extends StatelessWidget {
//   const bottomNavBar({
//     super.key,
//     required int selectedIndex,
//     required List<Widget> pages,
//   }) 

//   final int? _selectedIndex;
//   final List<Widget> _pages;

//   int _selectedIndex = 0;

//   void _navigateBottomBar(int index){
//     setState((){
//       _selectedIndex = index;
//     }
//     );
//   }

// final List<Widget> _pages = [
//     Login(),
//     Login(),
//     Login(),
//     Login(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _navigateBottomBar,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home', ),
//           BottomNavigationBarItem(icon: Icon(Icons.edit_note),label: 'Test', ),
//           BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile', ),
//           BottomNavigationBarItem(icon: Icon(Icons.smart_toy),label: 'ChatBot', ),
//       ],),
//     );
//   }
// }



// // GNav(
// //       gap: 8,
// //       // Need to make changes here for better looking bottom bar
// //       backgroundColor: Color(0xFFF28F3B),
// //       activeColor: Colors.white,
// //       tabBackgroundColor: Colors.grey.shade400,
// //       tabBorderRadius: 10.0,
// //       selectedIndex: _selectedIndex,
// //       onTabChange: (index) {
// //         _pages[_selectedIndex];
// //       },
// //       padding: EdgeInsets.all(20.0),
// //       tabs: [
// //         GButton(
// //           icon: Icons.home,
// //           text: 'Home',
// //         ),
// //         GButton(
// //           icon: Icons.edit_note,
// //           text: 'Test',
// //         ),
// //         GButton(
// //           icon: Icons.account_circle,
// //           text: 'Profile',
// //         ),
// //         GButton(
// //           icon: Icons.smart_toy,
// //           text: 'ChatBot',
// //         ),
// //         // GButton(icon: Icons.forum)
// //       ],
// //     );