import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_developer_challenge/models/model.dart';
import 'package:http/http.dart'as http;

class DuePaymentsDataProvider{
  final http.Client httpClient;
  final  baseUrl = "https://610e396448beae001747ba80.mockapi.io/duePayments";
   DuePayments duePayment;
   List<DuePayments>duePayments;

  DuePaymentsDataProvider({required this.httpClient,required this.duePayment,required this.duePayments});

  Future<List<DuePayments>> getDuePayments() async {


    try {
      final response = await httpClient.get(Uri.parse(baseUrl));
      print(response.statusCode);
      if (response.statusCode == 200) {
        final extractedData = json.decode(response.body) as List<dynamic>;


          duePayments = extractedData.map<DuePayments>((json) => DuePayments.fromJson(json)).toList();


      }
    } catch (e) {
      throw e;
    }
    return duePayments;


  }

  Future<DuePayments> getDuePayment(String id) async {
    final url = "$baseUrl/$id";
    try{

      final response = await httpClient.get(Uri.parse(url));

      if(response.statusCode == 200){

        final extractedData = json.decode(response.body)as Map<String,dynamic>;

          duePayment = DuePayments.fromJson(extractedData);

      }


    } catch(e){
      throw e;
    }
    return duePayment;

  }

  Future<DuePayments> postDuePayment(DuePayments duePayment) async{

    try{
      final response = await httpClient.post(
        Uri.parse(baseUrl),
        body: json.encode({
          "createdAt":duePayment.createdAt,
          "owedAmount":duePayment.owedAmount,
          "dueDate":duePayment.dueDate,
          "paidRounds":duePayment.paidRounds,
          "totalRounds":duePayment.totalRounds,
          "id":duePayment.id
        }),
        headers: {
          HttpHeaders.contentTypeHeader:"application/json",
        },
      );

      if(response.statusCode == 201){
        final extractedData = json.decode(response.body) as Map<String,dynamic>;

        duePayment = DuePayments.fromJson(extractedData);
      }

    }catch(e){
      throw e;
    }
    return duePayment;
  }




}
