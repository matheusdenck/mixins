import 'person_entity.dart';

abstract class ClientEntity implements PersonEntity {
  @override
  int age;

  @override
  String name;

  List<String> preferences;
  List<String> dislikes;
  double wallet;

  ClientEntity({
    required this.age,
    required this.name,
    required this.preferences,
    required this.dislikes,
    required this.wallet,
  });

  double fillWallet({required double money});
}
