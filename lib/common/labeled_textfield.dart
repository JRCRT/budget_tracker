import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        TextFormField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              hintText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide:
                      const BorderSide(color: Colors.black54, width: 2.0))),
        )
      ],
    );
  }
}
