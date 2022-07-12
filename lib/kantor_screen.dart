import 'dart:convert';
import 'package:flutter_demo/response.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class KantorScreen extends StatefulWidget {
  const KantorScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _KantorScreenState();
}

class _KantorScreenState extends State<KantorScreen> {
  late Future<Response> futureResponse;

  @override
  void initState() {
    super.initState();
    futureResponse = fetchTestData();
  }

  final Uri apiUrl = Uri.parse("https://reqres.in/api/users?per_page=15");

  Future<Response> fetchTestData() async {
    final response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Response.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Response>(
        future: futureResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("");
            return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: snapshot.data?.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(snapshot.data?.data?[index].avatar ?? ""),
                    ),
                    title: Text("${snapshot.data!.data?[index].first_name} "),
                    subtitle: Text(snapshot.data!.data?[index].email ?? ""),
                  );
                });
          } else {
            print("ini " + snapshot.error.toString());
            return const Center(child: Text("Loading"));
          }
        },
      ),
    );
  }
}
