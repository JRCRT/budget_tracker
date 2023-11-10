import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          )),
      onPressed: onPressed,
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: Colors.white)),
    );
  }
}
