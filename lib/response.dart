import 'data.dart';

class Response {
  int? page;
  int? total;
  List<Data>? data;

  Response({this.page, this.total, this.data});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      page: json['page'],
      total: json['total'],
      data: (json['data'] as List).map((c) => Data.fromJson(c)).toList() ??
          List.empty()
    );
  }
}
