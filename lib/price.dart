class Price {
  final String type;
  final String time;
  final String closeoutBid;
  final String closeoutAsk;
  final bool tradeable;
  final String instrument;

  Price(
      {required this.type,
        required this.time,
        required this.closeoutBid,
        required this.closeoutAsk,
        required this.tradeable,
        required this.instrument});

  factory Price.fromJson(dynamic json) {
    if (json == null) {
      return Price(time: '', closeoutAsk: '', closeoutBid: '', instrument: '', type: '', tradeable: null);
    }

    return Price(
      type: json['type'],
      time: json['time'],
      closeoutBid: json['closeoutBid'],
      closeoutAsk: json['closeoutAsk'],
      tradeable: json['tradeable'],
      instrument: json['instrument'],
    );
  }
}