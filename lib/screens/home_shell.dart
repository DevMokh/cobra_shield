import 'package:flutter/material.dart';

import 'history_screen.dart';
import 'learn_screen.dart';
import 'message_scan_screen.dart';
import 'url_scan_screen.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0;

  final List<Widget> _pages = const <Widget>[
    UrlScanScreen(),
    MessageScanScreen(),
    HistoryScreen(),
    LearnScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _index, children: _pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.link_rounded),
            selectedIcon: Icon(Icons.link_rounded),
            label: 'فحص رابط',
          ),
          NavigationDestination(
            icon: Icon(Icons.mark_email_unread_outlined),
            selectedIcon: Icon(Icons.mark_email_unread_rounded),
            label: 'فحص رسالة',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_rounded),
            selectedIcon: Icon(Icons.history_rounded),
            label: 'السجل',
          ),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            selectedIcon: Icon(Icons.school_rounded),
            label: 'تعلّم',
          ),
        ],
      ),
    );
  }
}
