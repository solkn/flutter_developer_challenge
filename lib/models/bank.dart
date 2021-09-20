import 'package:flutter_developer_challenge/models/model.dart';

class Bank{
  int id;
  String name;
  String logo;
  List<DuePayments>duePayments;
  List<CollectedPayments>collectedPayments;

  Bank({required this.id,required this.name,required this.logo,
        required this.duePayments,required this.collectedPayments});

  factory Bank.fromJson(Map<String,dynamic>json){
    return Bank(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
        duePayments: (json["duePayments"]as List)
            .map<DuePayments>((json) => DuePayments.fromJson(json)).toList(),
        collectedPayments: (json["collectedPayments"]as List)
        .map<CollectedPayments>((json) => CollectedPayments.fromJson(json)).toList()
    );
  }
}