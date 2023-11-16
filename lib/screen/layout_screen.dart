import 'package:budget_tracker/common/button.dart';
import 'package:budget_tracker/common/labeled_textfield.dart';
import 'package:budget_tracker/screen/budget_screen.dart';
import 'package:budget_tracker/screen/dashboard_screen.dart';
import 'package:budget_tracker/screen/item_screen.dart';
import 'package:budget_tracker/screen/setting_screen.dart';
import 'package:budget_tracker/util/helper.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 1;

  Widget displayScreen() {
    Widget screen = const DashboardScreen();
    switch (currentIndex) {
      case 1:
        screen = const DashboardScreen();
        break;
      case 2:
        screen = const BudgetScreen();
        break;
      case 3:
        screen = const ItemScreen();
        break;
      case 4:
        screen = const SettingScreen();
        break;
    }
    return screen;
  }

  IconData setIcon(
      {required IconData defaultIcon,
      required IconData selectedIcon,
      required int index}) {
    return currentIndex == index ? selectedIcon : defaultIcon;
  }

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

  void showAddBudget(BuildContext context) {
    showBottomModal(
        context,
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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

  void showAddItem(BuildContext context) {
    showBottomModal(
        context,
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LabeledTextField(label: 'Name'),
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

  void setAddButton(BuildContext context) {
    switch (currentIndex) {
      case 1:
        showAddExpensesModal(context);
        break;
      case 2:
        showAddBudget(context);
        break;
      case 3:
        showAddItem(context);
        break;
      case 4:
        showAddExpensesModal(context);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: displayScreen()),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setAddButton(context);
          },
          child: const Icon(Icons.add)),
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
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    icon: Icon(
                        setIcon(
                            index: 1,
                            selectedIcon: Icons.dashboard,
                            defaultIcon: Icons.dashboard_outlined),
                        color: Colors.blue)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    icon: Icon(
                        setIcon(
                            index: 2,
                            selectedIcon: Icons.account_balance_wallet,
                            defaultIcon: Icons.account_balance_wallet_outlined),
                        color: Colors.blue)),
                const SizedBox(
                  width: 80,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    icon: Icon(
                        setIcon(
                            index: 3,
                            selectedIcon: Icons.article,
                            defaultIcon: Icons.article_outlined),
                        color: Colors.blue)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                    icon: Icon(
                        setIcon(
                            index: 4,
                            selectedIcon: Icons.settings,
                            defaultIcon: Icons.settings_outlined),
                        color: Colors.blue)),
              ],
            ),
          )),
    );
  }
}
