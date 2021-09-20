import 'package:flutter/material.dart';
import 'package:flutter_developer_challenge/data_provider/data.dart';
import 'package:flutter_developer_challenge/view_models/view_model.dart';
import 'package:provider/provider.dart';

class DuePaymentsScreen extends StatefulWidget {
  final DuePaymentsProvider duePaymentsProvider;
  DuePaymentsScreen({required this.duePaymentsProvider});
  @override
  _DuePaymentsScreenState createState() =>
      _DuePaymentsScreenState(duePaymentsProvider:duePaymentsProvider );

}

class _DuePaymentsScreenState extends State<DuePaymentsScreen> {

  final DuePaymentsProvider duePaymentsProvider;
  _DuePaymentsScreenState({required this.duePaymentsProvider});

  @override
  void initState() {
    duePaymentsProvider.getDuePayments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collected Money'),
      ),
      body: buildListView(duePaymentsProvider),
    );
  }


  Widget buildListView(DuePaymentsProvider viewModel) {

    return ChangeNotifierProvider<DuePaymentsProvider>(

      create: (context) => viewModel,

      child: Consumer<DuePaymentsProvider>(
        builder: (context, model, child) => ListView.builder(
          itemCount: model.duePaymentsRepository.duePaymentsDataProvider.duePayments.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: SizedBox(
                  width: 60,
                  child: Text(
                    '${model.duePaymentsRepository.duePaymentsDataProvider.duePayments[index].owedAmount}',
                    style: TextStyle(fontSize: 30),
                  ),
                ),

                title: Text('${model.duePaymentsRepository.duePaymentsDataProvider.duePayments[index].totalRounds}'),
                subtitle: Text('${model.duePaymentsRepository.duePaymentsDataProvider.duePayments[index].paidRounds}'),
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


