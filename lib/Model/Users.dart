class Users {
  String? id;
  String? name1;
  String? name2;
  String? price;

  Users({this.id, this.name1, this.name2, this.price});

  toJson() {
    Map<String, dynamic> data = Map();
    data['id'] = id;
    data['name1'] = name1;
    data['name2'] = name2;
    data['price'] = price;
    return data;
  }

  Users.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    name1 = data['name1'];
    name2 = data['name2'];
    price = data['price'];
  }
}