import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Jerico!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  context: context,
                  title: 'Remaining Balance',
                  subTitle: 'PHP 10,000',
                  color: Theme.of(context).primaryColor),
              const SizedBox(
                height: 8,
              ),
              Card(
                  context: context,
                  title: 'Today\'s Expenses',
                  subTitle: 'PHP 8,000',
                  color: Colors.redAccent),
              const SizedBox(height: 10),
              TransactionItem()
            ],
          ),
        ),
      ),
    );
  }

  Widget TransactionItem() {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: Colors.blue,
      ),
      child: const Row(children: [
        Expanded(flex: 1, child: Icon(Icons.food_bank, color: Colors.white)),
        Expanded(flex: 2, child: Text('Food')),
        Expanded(flex: 2, child: Text('10/26/2023')),
        Expanded(flex: 1, child: Text('-PHP 600'))
      ]),
    );
  }

  Widget Card(
      {required BuildContext context,
      required String title,
      required String subTitle,
      Color color = Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
