void main() {
  /*Функциия как обьект */
  Function mainFunc = cal;
  print(mainFunc(word: 'hi'));
  mainFunc = testf2;
  print(mainFunc(3, 54));

  Car bmw = Car();
  print(bmw.numer);
  bmw.display();

  //Каскадная нотация, после создания класса .. для допуска к полям и методам (состоянию и поведение)
  Car bmw222 = Car()
    ..numer = 2323
    ..slov = 'rakov'
    ..display();

  testf2(2, 5);

  Human tom = Human('alex', 23);
  tom.display();

  Human tom2 = Human.named(name: 'Tom', age: 23);
  tom2.display();

  Human nix = Human.withName('NIXX');
  nix.display();

  
}

dynamic cal({word}) => 'fuck this shit $word';

int testf2(a, b) {
  int c = a * b;
  return c;
}

class Human {
  String? name;
  int? age;
  
  Human(this.name, this.age);
  Human.named({this.name, this.age=11});

  Human.withName(String name) {
    this.name = name;
    age = 12;
  }

  void display() {
    print("Хуман: $name, $age");
  }
}
/*
class Human {

  String name = '';
  int age = 0;

  Human(String name, int age) {
  this.name = name;
  this.age = age;
  }
const - заранее известно в момент компиляции, final - найдется в момент выполнения проги,запуска самого кода, но не измениться
}
*/

/*cerf*/
class Car {
  String slov = "Helppp";
  int numer = 342;

  void display() {
    print("Вывожу: $slov, $numer");
  }

  // Car(this.slov, this.numer) {}
}
