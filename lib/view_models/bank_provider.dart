import 'package:flutter/cupertino.dart';
import 'package:flutter_developer_challenge/data_provider/data.dart';

class BankProvider with ChangeNotifier{
  final BankDataProvider bankDataProvider;

  BankProvider({required this.bankDataProvider});

  void getBanks() {
     bankDataProvider.getBanks();

    notifyListeners();
  }
  void getBank(int id) {
     bankDataProvider.getBank(id);
    notifyListeners();
  }
}