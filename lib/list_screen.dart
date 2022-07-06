import 'package:flutter/material.dart';
import 'package:flutter_demo/detail_screen.dart';
import 'package:flutter_demo/identity.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    List<Identity> dataIden = [];
    dataIden.add(Identity(
        nama: "Sandi",
        alamat:
            "Jalan Terusan CCI 8 No. 5 Mekarrahayu, Margaasih Kabupaten Bandung",
        umur: "26",
        status: "Menikah"));
    dataIden.add(Identity(
        nama: "Putra",
        alamat:
            "Jalan Kemandoran Raya No 47, Grogol Utara, Kebayoran Lama, Jakarta Barat",
        umur: "26",
        status: "Menikah"));

    return Scaffold(
        appBar: AppBar(
          title: const Text('List'),
          leading: const Icon(Icons.menu),
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
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _changeSelectedNavBar,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            height: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen()))
                        },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 70,
                                  child: Text("Nama"),
                                ),
                                Container(
                                    child: Flexible(
                                  child: Text(
                                    ": ${dataIden[index].nama}",
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 70,
                                  child: Text("Alamat"),
                                ),
                                Container(
                                    child: Flexible(
                                  child: Text(
                                    ": ${dataIden[index].alamat}",
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 70,
                                  child: Text("Umur"),
                                ),
                                Container(
                                    child: Flexible(
                                  child: Text(
                                    ": ${dataIden[index].umur}",
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ));
              },
              itemCount: dataIden.length,
            ),
          ),
        ));
  }

  void _showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
            label: 'Dismiss', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
