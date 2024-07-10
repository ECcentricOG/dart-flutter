class Phone {
  String? name;
  String? id;
  Data? data;

  Phone.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    if (data != null) {
      Data.fromJson(json['data']);
    }
  }
}

class Data {
  String? color;
  String? capacity;

  Data.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    capacity = json['capacity'];
  }
}
