import 'dart:convert';

class GiphyIDs {
  List<ConGif> positive;
  List<ConGif> watchout;
  List<ConGif> negative;
  List<ConGif> almost;
  List<ConGif> learn;

  GiphyIDs({
    this.positive,
    this.watchout,
    this.negative,
    this.almost,
    this.learn,
  });

  factory GiphyIDs.fromJson(String str) => GiphyIDs.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GiphyIDs.fromMap(Map<String, dynamic> json) => GiphyIDs(
    positive: json["positive"] == null
        ? null
        : List<ConGif>.from(json["positive"].map((x) => ConGif.fromMap(x))),
    watchout: json["watchout"] == null
        ? null
        : List<ConGif>.from(json["watchout"].map((x) => ConGif.fromMap(x))),
    negative: json["negative"] == null
        ? null
        : List<ConGif>.from(json["negative"].map((x) => ConGif.fromMap(x))),
    almost: json["almost"] == null
        ? null
        : List<ConGif>.from(json["almost"].map((x) => ConGif.fromMap(x))),
    learn: json["learn"] == null
        ? null
        : List<ConGif>.from(json["learn"].map((x) => ConGif.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "positive": positive == null
        ? null
        : List<dynamic>.from(positive.map((x) => x.toMap())),
    "watchout": watchout == null
        ? null
        : List<dynamic>.from(watchout.map((x) => x.toMap())),
    "negative": negative == null
        ? null
        : List<dynamic>.from(negative.map((x) => x.toMap())),
    "almost": almost == null
        ? null
        : List<dynamic>.from(almost.map((x) => x.toMap())),
    "learn": learn == null
        ? null
        : List<dynamic>.from(learn.map((x) => x.toMap())),
  };
}

class ConGif {
  String id;

  ConGif({
    this.id,
  });

  factory ConGif.fromJson(String str) => ConGif.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConGif.fromMap(Map<String, dynamic> json) => ConGif(
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
  };
}
