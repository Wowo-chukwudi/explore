class CountryList {
  String flags;
  String name;
  String capital;

  CountryList({required this.flags, required this.name, required this.capital});

  factory CountryList.fromJson(Map<String, dynamic> json) {
    return CountryList(
        flags: json['flags'] as String,
        name: json['name'] as String,
        capital: json['capital'] as String);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'flags': flags, 'name': name, 'capital': capital};
  }
}
