import 'package:flutter/cupertino.dart';
import 'package:flutter_developer_challenge/models/model.dart';
import 'package:flutter_developer_challenge/repository/repository.dart';

class DuePaymentsProvider with ChangeNotifier{

  final DuePaymentsRepository duePaymentsRepository;

  DuePaymentsProvider({required this.duePaymentsRepository});

  void getDuePayments() async{
    await duePaymentsRepository.getDuePayments();

    notifyListeners();
  }

  void getDuePayment(String id) async{
    await duePaymentsRepository.getDuePayment(id);

    notifyListeners();
  }

}