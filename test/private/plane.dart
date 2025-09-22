class Plane {
  String _name = '';
  final int _year;

  Plane( this._name, this._year);
  void _printPlane() => print("Name: $_name \tAge: $_year");

  void display() => print("$_name, $_year");

  // String get name => _name;

  String get name {
    return _name;
  }
  bool get IsCool => _year < 20;
  int get SticksVPope => 20 + _year;

  // set setName(String newName) => _name = newName;

  set setName(String newName) {
    if (newName != "Alex") {
      _name = newName;
    }
  }
}

void main() {
  Plane myBoeing = Plane('Boeing b24', 12);
  myBoeing._printPlane();
}
