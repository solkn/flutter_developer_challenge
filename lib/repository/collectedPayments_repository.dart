
import 'package:flutter/cupertino.dart';
import 'package:flutter_developer_challenge/data_provider/data.dart';
import 'package:flutter_developer_challenge/models/model.dart';

class CollectedPaymentsRepository{
  final CollectedPaymentsDataProvider? collectedPaymentsDataProvider;

  CollectedPaymentsRepository({@required this.collectedPaymentsDataProvider});

  Future<List<CollectedPayments>?>getCollectedPayments() async{

     return await collectedPaymentsDataProvider!.getCollectedPayments();
}

Future<CollectedPayments?>getCollectedPayment(String id) async{
    return await collectedPaymentsDataProvider!.getCollectedPayment(id);
}

}