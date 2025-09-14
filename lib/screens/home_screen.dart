import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route_provider/provider/counter_provider.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<CounterProvider>().message;
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
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
              onPressed: () async {
                  context
                    .read<CounterProvider>()
                    .textdetail('this is data from home page');
                  Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: const Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

