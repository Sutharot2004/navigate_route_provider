import 'package:flutter/material.dart';
import 'package:navigate_route_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  const DetailScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<CounterProvider>().message;
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message.isEmpty ? '' : message,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 15,
            ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<CounterProvider>()
                    .textdetail('this is data from detail page');
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
