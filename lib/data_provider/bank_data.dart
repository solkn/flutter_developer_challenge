import 'package:flutter_developer_challenge/mock_api/mock.dart';
import 'package:flutter_developer_challenge/models/model.dart';

class BankDataProvider{
  Bank bank;
  List<Bank>banks;
  BankApiMock bankApiMock;
  BankDataProvider({required this.bank,required this.banks, required this.bankApiMock});

 
  List<Bank> getBanks()  {
    banks =  bankApiMock.banks;
    
    return  banks;
}

  Bank getBank(int id) {
    bank = bankApiMock.banks.elementAt(id);

    return bank;
  }
}