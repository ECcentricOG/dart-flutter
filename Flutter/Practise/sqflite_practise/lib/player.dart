class Player {
  final int jerNo;
  final String name;
  final double avg;

  Player({
    required this.avg,
    required this.jerNo,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'jerNo': jerNo,
      'name': name,
      'avg': avg,
    };
  }

  @override
  String toString() {
    return "$jerNo $name $avg";
  }
}
