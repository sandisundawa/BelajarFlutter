import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'identity.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


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
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            height: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () =>
                    {
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

}