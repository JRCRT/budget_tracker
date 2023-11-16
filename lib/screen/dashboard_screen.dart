import 'package:budget_tracker/common/button.dart';
import 'package:budget_tracker/common/custom_scaffold.dart';
import 'package:budget_tracker/common/labeled_textfield.dart';
import 'package:budget_tracker/util/helper.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void showAddExpensesModal(BuildContext context) {
    showBottomModal(
        context,
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LabeledTextField(label: 'Item'),
            const SizedBox(
              height: 10,
            ),
            const LabeledTextField(
              label: 'Amount',
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                height: 45,
                child: Button(
                  title: 'Add',
                  onPressed: () {},
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Jerico!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 20,
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
        const SizedBox(height: 20),
        Text(
          'Today\'s Expenses',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return TransactionItem(context);
              }),
        )
      ],
    );
  }

  Widget TransactionItem(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey, blurRadius: 1, offset: Offset(0.0, 0.2)),
        ],
      ),
      child: Row(children: [
        const Expanded(
            flex: 1,
            child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.food_bank, color: Colors.white))),
        Expanded(
            flex: 1,
            child: Text(
              'Food',
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        Expanded(
            flex: 2,
            child: Text(
              '10/26/2023',
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        Expanded(
            flex: 1,
            child: Text(
              '-PHP 600',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.redAccent),
            ))
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
