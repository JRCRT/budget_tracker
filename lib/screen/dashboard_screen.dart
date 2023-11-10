import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
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
              const SizedBox(height: 20),
              Text(
                'Today\'s Expenses',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              TransactionItem(context)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shadowColor: Colors.grey,
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          elevation: 10,
          notchMargin: 6.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.dashboard_outlined,
                        color: Colors.blue)),
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.payment, color: Colors.blue)),
                const SizedBox(
                  width: 80,
                ),
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.list_alt, color: Colors.blue)),
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.settings, color: Colors.blue)),
              ],
            ),
          )),
    );
  }

  Widget TransactionItem(BuildContext context) {
    return Container(
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
