import 'package:flutter/cupertino.dart';
import 'package:flutter_developer_challenge/repository/repository.dart';

class CollectedPaymentsProvider with ChangeNotifier{
    final CollectedPaymentsRepository collectedPaymentsRepository;

    CollectedPaymentsProvider({required this.collectedPaymentsRepository});

    void getCollectedPayments() async{
       await collectedPaymentsRepository.getCollectedPayments();

       notifyListeners();
    }
    void getCollectedPayment(String id) async{
      await collectedPaymentsRepository.getCollectedPayment(id);

      notifyListeners();
    }
}