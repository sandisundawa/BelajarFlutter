import 'package:flutter/material.dart';
import 'package:flutter_demo/detail_screen.dart';
import 'package:flutter_demo/list_screen.dart';
import 'package:flutter_demo/mail_screen.dart';
import 'package:flutter_demo/nav-drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedNavbar = 0;
  bool canback = false;

  final tabs = [
    const DetailScreen(),
    const ListScreen(),
    const MailScreen(),
    Center(child: Text("Settings")),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async {
      final shouldPop = await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Do you want Exit?'),
            actionsAlignment: MainAxisAlignment.spaceBetween,
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: const Text('No'),
              ),
            ],
          );
        },
      );
      return shouldPop!;
    },
    child: Scaffold(
        key: _scaffoldKey,
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: const Text('Dashboard'),
          leading: IconButton(
            icon: const Icon(Icons.menu), onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  _showToast(context, "Penambahan");
                },
                icon: const Icon(Icons.add, color: Colors.white)),
            IconButton(
                onPressed: () {
                  _showToast(context, "Alarm");
                },
                icon: const Icon(
                  Icons.access_alarms,
                  color: Colors.white,
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assessment),
                  label: "Assessment",
                  tooltip: "Assessment"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail), label: "Mail", tooltip: "Mail"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  tooltip: "Settings"),
            ],
            currentIndex: _selectedNavbar,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: _changeSelectedNavBar
        ),
        body: IndexedStack(
          children: [
            tabs[_selectedNavbar]
          ],
        )
    ));
  }

  void _showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
            label: 'Dismiss', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
