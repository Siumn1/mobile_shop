import 'plane.dart';

void main() {
  Plane boeing = Plane('Boeing e34', 12);
  boeing.display();
  print(boeing.name);
  dynamic eng = boeing.name;
  print(eng);
  boeing.setName = 'Alex';

  print(boeing.IsCool);
  print(boeing.SticksVPope);

  print(boeing.name);

  // boeing._printPlane();
  // boeing._name = 111;
}
