import 'package:flutter_developer_challenge/data_provider/data.dart';
import 'package:flutter_developer_challenge/models/model.dart';

class DuePaymentsRepository{
  final DuePaymentsDataProvider duePaymentsDataProvider;

  DuePaymentsRepository({required this.duePaymentsDataProvider});

  Future<List<DuePayments>>getDuePayments() async{
    return await duePaymentsDataProvider.getDuePayments();
  }
  Future<DuePayments>getDuePayment(String id) async{
    return await duePaymentsDataProvider.getDuePayment(id);
  }
}