import 'package:flutter/material.dart';
import 'package:flutter_developer_challenge/data_provider/data.dart';
import 'package:flutter_developer_challenge/view_models/view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final BankProvider bankProvider;
  HomeScreen({required this.bankProvider});
  @override
  _HomeScreenState createState() =>
      _HomeScreenState(bankProvider: bankProvider);

}

class _HomeScreenState extends State<HomeScreen> {

  final BankProvider bankProvider;
  _HomeScreenState({required this.bankProvider});

  @override
  void initState() {
    bankProvider.getBanks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banks'),
      ),
      body: buildListView(bankProvider),
    );
  }


  Widget buildListView(BankProvider viewModel) {

    return ChangeNotifierProvider<BankProvider>(

      create: (context) => viewModel,

      child: Consumer<BankProvider>(
        builder: (context, model, child) => ListView.builder(
          itemCount: model.bankDataProvider.banks.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: SizedBox(
                  width: 60,
                  child: Text(
                    '${model.bankDataProvider.banks[index].logo}',
                    style: TextStyle(fontSize: 30),
                  ),
                ),

                title: Text('${model.bankDataProvider.banks[index].name}'),
                subtitle: Text('${model.bankDataProvider.banks[index].duePayments}'),
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


