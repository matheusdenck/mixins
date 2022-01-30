import '../../domain/entities/client_entity.dart';

class RichClient implements ClientEntity {
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
  RichClient({
    required this.age,
    required this.dislikes,
    required this.name,
    required this.preferences,
    required this.wallet,
  });

  @override
  double fillWallet({required double money}) => _richClientWallet(money: money);

  double _richClientWallet({required double money}) => money * 2;
}
