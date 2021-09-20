import 'package:flutter/material.dart';
import 'package:flutter_developer_challenge/repository/repository.dart';
import 'package:flutter_developer_challenge/view_models/collectedPayments_provider.dart';
import 'package:provider/provider.dart';

void main() {

  final CollectedPaymentsProvider collectedPaymentsProvider = CollectedPaymentsProvider(
      collectedPaymentsRepository: CollectedPaymentsRepository());


  runApp(FlutterDeveloperChallenge(
    collectedPaymentsProvider:collectedPaymentsProvider,
  ));
}

class FlutterDeveloperChallenge extends StatelessWidget {
  final CollectedPaymentsProvider collectedPaymentsProvider;


  FlutterDeveloperChallenge({
    required this.collectedPaymentsProvider,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CollectedPaymentsProvider>(
          create: (_) => this.collectedPaymentsProvider,
        ),

      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Soccer App',
          initialRoute: '/',
          //onGenerateRoute: AppRoutes.generateRoute,
        ),

    );
  }
}