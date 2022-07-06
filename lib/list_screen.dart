import 'package:flutter/material.dart';
import 'package:flutter_demo/identity.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bulan = [
      "Januari",
      "Fabruari",
      "Maret",
      "April",
      "Mei",
      "Juni",
      "Juli",
      "Agustus",
      "September",
      "Oktober",
      "November",
      "Desember"
    ];

    String nama = "";
    var listName = <String>[];
    listName.addAll(bulan);

    List<Identity> dataIden = [];
    dataIden.add(Identity(
        nama: "Sandi", alamat: "jakarta", umur: "26", status: "Menikah"));
    dataIden.add(Identity(
        nama: "Putra", alamat: "jakarta", umur: "26", status: "Menikah"));

    return Scaffold(
        appBar: AppBar(
          title: const Text('List'),
        ),
        body: SizedBox(
          height: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
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
                          Text(": ${dataIden[index].nama}")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 70,
                            child: Text("Alamat"),
                          ),
                          Text(": ${dataIden[index].alamat}")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 70,
                            child: Text("Umur"),
                          ),
                          Text(": ${dataIden[index].umur}")
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: dataIden.length,
          ),
        ));
  }
}
