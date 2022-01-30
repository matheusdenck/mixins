import '../../domain/entities/client_entity.dart';

class PoorClient implements ClientEntity {
  @override
  int age;

  @override
  List<String> dislikes;

  @override
  String name;

  @override
  List<String> preferences;

  @override
  double wallet;
  PoorClient({
    required this.age,
    required this.dislikes,
    required this.name,
    required this.preferences,
    required this.wallet,
  });

  @override
  double fillWallet({required double money}) => poorClientWallet(money: money);

  double poorClientWallet({required double money}) => money / 2;
}
