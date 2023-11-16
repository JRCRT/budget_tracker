import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {super.key,
      required this.currentIndex,
      this.child,
      this.addButtonOnPressed});

  final int currentIndex;
  final Widget? child;
  final void Function()? addButtonOnPressed;

  IconData setIcon(
      {required IconData defaultIcon,
      required IconData selectedIcon,
      required int currentIndex,
      required int index}) {
    return currentIndex == index ? selectedIcon : defaultIcon;
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
            child: child),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: addButtonOnPressed, child: const Icon(Icons.add)),
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
                    onPressed: () =>
                        {Navigator.pushReplacementNamed(context, '/')},
                    icon: Icon(
                        setIcon(
                            currentIndex: currentIndex,
                            index: 1,
                            selectedIcon: Icons.dashboard,
                            defaultIcon: Icons.dashboard_outlined),
                        color: Colors.blue)),
                IconButton(
                    onPressed: () =>
                        {Navigator.pushReplacementNamed(context, '/budget')},
                    icon: Icon(
                        setIcon(
                            currentIndex: currentIndex,
                            index: 2,
                            selectedIcon: Icons.account_balance_wallet,
                            defaultIcon: Icons.account_balance_wallet_outlined),
                        color: Colors.blue)),
                const SizedBox(
                  width: 80,
                ),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                        setIcon(
                            currentIndex: currentIndex,
                            index: 3,
                            selectedIcon: Icons.article,
                            defaultIcon: Icons.article_outlined),
                        color: Colors.blue)),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                        setIcon(
                            currentIndex: currentIndex,
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
