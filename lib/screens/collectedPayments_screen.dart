import 'package:flutter/material.dart';
import 'package:flutter_developer_challenge/data_provider/data.dart';
import 'package:flutter_developer_challenge/view_models/view_model.dart';
import 'package:provider/provider.dart';

class CollectedPaymentsScreen extends StatefulWidget {
  final CollectedPaymentsProvider collectedPaymentsProvider;
  CollectedPaymentsScreen({required this.collectedPaymentsProvider});
  @override
  _CollectedPaymentsScreenState createState() =>
      _CollectedPaymentsScreenState(collectedPaymentsProvider: collectedPaymentsProvider);

}

class _CollectedPaymentsScreenState extends State<CollectedPaymentsScreen> {

   final CollectedPaymentsProvider collectedPaymentsProvider;
   _CollectedPaymentsScreenState({required this.collectedPaymentsProvider});

  @override
  void initState() {
    collectedPaymentsProvider.getCollectedPayments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collected Money'),
      ),
      body: buildListView(collectedPaymentsProvider),
    );
  }


  Widget buildListView(CollectedPaymentsProvider viewModel) {

    return ChangeNotifierProvider<CollectedPaymentsProvider>(

      create: (context) => viewModel,

      child: Consumer<CollectedPaymentsProvider>(
        builder: (context, model, child) => ListView.builder(
          itemCount: model.collectedPaymentsRepository.collectedPaymentsDataProvider!.collectedPayments!.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: SizedBox(
                  width: 60,
                  child: Text(
                    '${model.collectedPaymentsRepository.collectedPaymentsDataProvider!.collectedPayments![index].title}',
                    style: TextStyle(fontSize: 30),
                  ),
                ),

                title: Text('${model.collectedPaymentsRepository.collectedPaymentsDataProvider!.collectedPayments![index].membersCount}'),
                subtitle: Text('${model.collectedPaymentsRepository.collectedPaymentsDataProvider!.collectedPayments![index].amount}'),
                onTap: () {

                },
              ),
            );
          },
        ),
      ),
    );
  }
}


