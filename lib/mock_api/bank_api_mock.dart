import 'package:flutter_developer_challenge/models/model.dart';

class BankApiMock{
  List<CollectedPayments> collectedPayments;
  BankApiMock({required this.collectedPayments});
  List<Bank> banks = [
    Bank(
      id: 0,
      name: "Abyssinia Bank",
      logo: "assets/abyssinia.jpg",
      collectedPayments: [],
      duePayments: [],

    ),

    Bank(
      id: 1,
      name: "Dashen Bank",
      logo: "assets/dashen.jpg",
      collectedPayments: [],
      duePayments: [],

    ),

    Bank(
      id: 2,
      name: "Commercial Bank Of Ethiopia",
      logo: "assets/commercial bank of ethiopia.jpg",
      collectedPayments: [],
      duePayments: [],

    ),

    Bank(
      id: 3,
      name: "Birhan Bank",
      logo: "assets/birhan.jpg",
      collectedPayments: [],
      duePayments: [],

    ),

    Bank(
      id: 4,
      name: "Enat Bank",
      logo: "assets/enat.jpg",
      collectedPayments: [],
      duePayments: [],

    ),

    Bank(
      id: 5,
      name: "Wegagen Bank",
      logo: "assets/wegagen.jpg",
      collectedPayments: [],
      duePayments: [],

    ),
  ];
}