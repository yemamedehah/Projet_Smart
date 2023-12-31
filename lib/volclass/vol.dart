class Vol {
  final String origine;
  final String destination;
  final String date;
  final String type;
  final int passagers;
  final String classe;

  Vol({
    required this.origine,
    required this.destination,
    required this.date,
    required this.type,
    required this.passagers,
    required this.classe,
  });

  // Factory method to create a Vol instance from a Map
  factory Vol.fromMap(Map<String, dynamic> map) {
    return Vol(
      origine: map['origine'] ?? '',
      destination: map['destination'] ?? '',
      date: map['date'] ?? '',
      type: map['type'] ?? '',
      passagers: map['passagers'] ?? 0,
      classe: map['classe'] ?? '',
    );
  }
}
