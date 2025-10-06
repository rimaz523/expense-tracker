import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseTrackerApp());
}

class ExpenseTrackerApp extends StatefulWidget {
  const ExpenseTrackerApp({super.key});

  @override
  State<ExpenseTrackerApp> createState() => _ExpenseTrackerAppState();
}

class _ExpenseTrackerAppState extends State<ExpenseTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
      ),

      title: 'Rupeo Expense Tracker',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Rupeo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal[700],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text(
                  'Rupeo Expense Tracker',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
              ListTile(leading: Icon(Icons.person), title: Text('Profile')),
              ListTile(leading: Icon(Icons.pie_chart), title: Text('Reports')),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        body: Center(child: Text('Welcome to Expense Tracker!!!')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_present),
              label: 'Budget',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Expenses'),
          ],
        ),
      ),
    );
  }
}
