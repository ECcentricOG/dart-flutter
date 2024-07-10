class Demo {
  int? _id;
  String? _name;

  void setName(String name) {
    this._name = name;
  }

  void setId(int id) {
    this._id = id;
  }

  String? get getName => _name; 

  int? get getId => _id;
}

void main() {
  Demo obj = Demo();
  obj.setName("Leo");
  obj.setId(10);
  print(obj.getName);
  print(obj.getId);
}
