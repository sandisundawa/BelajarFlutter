import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
            return <Widget>[
              const SliverAppBar(
                expandedHeight: 300,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Detail Data PLN Ams",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                  ),
                  background: Image(
                    image: AssetImage('assets/pln.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const TabBar(
                        labelColor: Colors.black87,
                        unselectedLabelColor: Colors.black12,
                        tabs: [
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
          body: const Center(
            child: Text("Pln AMS"),
          ),
        ),
      ),
    );
  }
}
