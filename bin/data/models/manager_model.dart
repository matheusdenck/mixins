import '../../domain/entities/employee_entity.dart';

class Manager implements EmployeeEntity {
  @override
  int age;
  @override
  String name;
  @override
  String occupation = "Manager";
  @override
  double salary;
  @override
  String jobDescription = "Gerentão top";

  Manager({
    required this.age,
    required this.name,
    required this.salary,
  });

  @override
  String specificFunction(String function) => _hirePeople(function);

  String _hirePeople(String nameOfEmployee) => "$nameOfEmployee, you're hired!";
}
