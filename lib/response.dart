import 'data.dart';

class Response {
  final int page;
  final int total;
  final List<Data> data;

  const Response({required this.page, required this.total, required this.data});

  factory Response.fromJson(dynamic json) {
    return Response(
      page: json['page'],
      total: json['total'],
      data: (json['data'] as List)?.map((c) => Data.fromJson(c))?.toList() ??
          List.empty()
    );
  }
}
