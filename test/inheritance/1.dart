class Human {
  String? _name;
  final int? _age;

  Human(this._name, this._age);

  void display() {
    print("Стата человека: $_name, $_age");
  }

  int? get age => _age;

  set name(String newName) {
    _name = newName;
  }
}

class Student extends Human {
  final int? _roomId;

  Student(super.name, super.age, this._roomId);

  @override // - Переопиисывания существующего метода в род классе
  void display() {
    // TODO: implement display
    super
        .display(); //- ВЫЗОВ РЕАЛИЗАЦИИ display ИЗ HUMAN - РОД КЛАССА! wow просто
    // print("\n");
    print(_roomId);
  }
}

void main() {
  Human sike = Human('Simon', 23);
  sike.display();
  Student roman = Student('Niker', 12, 209);
  roman.display();

  print(roman.age);
  print(roman.name = 'NIX');
  roman.display();
}
