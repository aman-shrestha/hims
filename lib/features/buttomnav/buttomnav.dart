import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hims/features/dashboard/dashboardView.dart';
import 'package:hims/features/documents/documentsView.dart';
import 'package:hims/features/jobs/jobsView.dart';
import 'package:hims/features/notice/noticeView.dart';
import 'package:hims/features/share/shareView.dart';
import 'package:hims/shared/theme/colors.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    DashboardView(),
    NoticeView(),
    ShareView(),
    DocumentsView(),
    JobsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Notice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Documents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Jobs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.gray,
        onTap: _onItemTapped,
      ),
    );
  }
}
