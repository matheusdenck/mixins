import 'dart:async';

import '../../domain/entities/employee_entity.dart';

class Bartender with MakeDrinksWithFire implements EmployeeEntity {
  @override
  String jobDescription = "é um baita bartenderzão doido";

  @override
  int age;

  @override
  String name;

  @override
  String occupation = "Bartender";

  @override
  double salary;

  Bartender({
    required this.name,
    required this.age,
    required this.salary,
  });

  @override
  String specificFunction(String order) => _makeDrinks(order);

  String _makeDrinks(String order) {
    print("shakando a coqueteleira");
    Timer(Duration(seconds: 3), () {
      print("colocando no copo");
    });
    Timer(Duration(seconds: 2), () {
      print("garnishando");
    });
    Timer(Duration(seconds: 2), () {
      print("$order pronto");
    });
    return "Saúde";
  }
}
