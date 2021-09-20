import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_developer_challenge/models/model.dart';
import 'package:http/http.dart'as http;

class CollectedPaymentsDataProvider{
  final http.Client httpClient;
  final  baseUrl = "https://610e396448beae001747ba80.mockapi.io/collectedPayments";
  List<CollectedPayments>? collectedPayments;
  CollectedPayments? collectedPayment;


  CollectedPaymentsDataProvider({required this.httpClient,@required this.collectedPayments,
                                  @required this.collectedPayment});

  Future<List<CollectedPayments>?> getCollectedPayments() async {


    try {
      final response = await httpClient.get(Uri.parse(baseUrl));
      print(response.statusCode);
      if (response.statusCode == 200) {
        final extractedData = json.decode(response.body) as List<dynamic>;


        collectedPayments = extractedData.map<CollectedPayments>((json) => CollectedPayments.fromJson(json)).toList();


      }

    } catch (e) {
      throw e;
    }
    return collectedPayments;

  }

  Future<CollectedPayments?> getCollectedPayment(String id) async {
    final url = "$baseUrl/$id";
    try{

      final response = await httpClient.get(Uri.parse(url));

      if(response.statusCode == 200){

        final extractedData = json.decode(response.body)as Map<String,dynamic>;

        collectedPayment = CollectedPayments.fromJson(extractedData);

      }

    } catch(e){
      throw e;
    }
    return collectedPayment;

  }






}
