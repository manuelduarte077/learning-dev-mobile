class Joke {
  final String id;
  final String value;

  Joke({required this.id, required this.value});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: json['id'],
      value: json['value'],
    );
  }
}
