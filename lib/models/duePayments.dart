import 'package:flutter/cupertino.dart';

class DuePayments{
  String createdAt;
  String owedAmount;
  String dueDate;
  int paidRounds;
  int totalRounds;
  String id;

  DuePayments({ required this.createdAt,required this.owedAmount,required this.dueDate,
                required this.paidRounds,required this.totalRounds,required this.id});

  factory DuePayments.fromJson(Map<String,dynamic>json){

    return DuePayments(
      createdAt:json["createdAt"],
      owedAmount: json["owedAmount"],
      dueDate: json["dueDate"],
      paidRounds: json["paidRounds"],
      totalRounds: json["totalRounds"],
      id: json["id"],

    );
  }

}