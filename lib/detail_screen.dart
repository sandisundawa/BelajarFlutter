import 'package:flutter/material.dart';
import 'package:flutter_demo/kantor_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _selectedTab = 0;

  final tabs = [
    KantorScreen(),
    Center(child: Text("Admin")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
              return <Widget>[
                // const SliverAppBar(
                //   expandedHeight: 300,
                //   floating: false,
                //   pinned: true,
                //   flexibleSpace: FlexibleSpaceBar(
                //     centerTitle: true,
                //     title: Text(
                //       "Detail Data PLN Ams",
                //       style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                //     ),
                //     background: Image(
                //       image: AssetImage('assets/pln.png'),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                SliverPadding(
                  padding: EdgeInsets.all(16),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      TabBar(
                          onTap: (int index) {
                            _changeSelectedTab(index);
                          },
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black12,
                          tabs: const [
                            Tab(
                              icon: Icon(Icons.account_balance_outlined),
                              text: "Kantor",
                            ),
                            Tab(
                                icon: Icon(Icons.account_balance_wallet_sharp),
                                text: "Admin")
                          ])
                    ]),
                  ),
                )
              ];
            },
            body: tabs[_selectedTab]),
      ),
    );
  }

  void _changeSelectedTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
}
