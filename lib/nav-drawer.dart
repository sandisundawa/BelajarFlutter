import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.file_copy_outlined,
              text: "My Files",
              onTap: () => print("My Files")),
          _drawerItem(
              icon: Icons.add_a_photo,
              text: "Gallery",
              onTap: () => print("Gallery")),
          _drawerItem(
              icon: Icons.add_chart_sharp,
              text: "Chart",
              onTap: () => print("Chart")),
          const Divider(
            height: 25,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Additional",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Family',
              onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return const UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage("assets/man.png"),
          fit: BoxFit.cover,
        ),
      ),
      otherAccountsPictures: [
        ClipOval(
          child: Image(
            image: AssetImage("assets/man2.png"),
            fit: BoxFit.cover,
          ),
        ),
        ClipOval(
          child: Image(
            image: AssetImage("assets/woman.png"),
            fit: BoxFit.cover,
          ),
        ),
      ],
      accountName: Text("Sandi Putra"),
      accountEmail: Text("sundawasandi@gmail.com"),
    );
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
