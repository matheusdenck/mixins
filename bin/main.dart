import 'data/models/bartender_model.dart';
import 'data/models/manager_model.dart';
import 'data/models/poor_client_model.dart';
import 'data/models/rich_client_model.dart';

void main() {
  final double moneyForWallet = 1000;
  final richClientDislikes = <String>[
    "alho",
    "pimenta",
    "cebola",
    "pimentão",
  ];
  final poorClientDislikes = <String>[];
  final Manager matheusManager = Manager(
    age: 30,
    name: "matheusManager",
    salary: 5000,
  );
  final Bartender matheusBartender = Bartender(
    age: 30,
    name: "matheusBartender",
    salary: 2000,
  );
  final RichClient matheusRich = RichClient(
    age: 30,
    name: "matheusRich",
    dislikes: richClientDislikes,
    preferences: ["escargot", "camarão"],
    wallet: moneyForWallet,
  );
  final PoorClient matheusPoor = PoorClient(
      age: 30,
      name: "matheusPoor",
      dislikes: poorClientDislikes,
      preferences: ["tudo"],
      wallet: moneyForWallet);

  print("carteira do pobre: ${matheusPoor.fillWallet(money: moneyForWallet)}");

  print("carteira do rico: ${matheusRich.fillWallet(money: moneyForWallet)}");

  //contratar alguem
  print(matheusManager.specificFunction(matheusPoor.name));
  //fazer drinks
  print(matheusBartender.specificFunction('Strawberry Basil Lemonade'));

  //mixin makeDrinksWithFire
  print(matheusBartender.makeDrinksWithFire('Faz um drink com fogo pa nóis'));
}
