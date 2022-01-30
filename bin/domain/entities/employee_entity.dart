import 'person_entity.dart';

abstract class EmployeeEntity implements PersonEntity {
  @override
  int age;

  @override
  String name;

  String occupation;
  double salary;
  String jobDescription;

  EmployeeEntity({
    required this.age,
    required this.name,
    required this.occupation,
    required this.salary,
    required this.jobDescription,
  });

  String specificFunction(String function);
}

mixin MakeDrinksWithFire implements EmployeeEntity {
  String makeDrinksWithFire(String drink) {
    return "só os bartender manja";
  }
}
