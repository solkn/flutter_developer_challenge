class CollectedPayments{
  String createdAt;
  String title;
  int frequency;
  String amount;
  int membersCount;
  String id;

  CollectedPayments({required this.createdAt,required this.title,required this.frequency,
                     required this.amount,required this.membersCount,required this.id});

  factory CollectedPayments.fromJson(Map<String,dynamic>json){
    return CollectedPayments(
        createdAt: json["createdAt"],
        title: json["title"],
        frequency: json["frequency"],
        amount: json["amount"],
        membersCount: json["membersCount"],
        id: json["id"],
    );
  }
}