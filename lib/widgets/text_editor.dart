import 'package:flutter/material.dart';

class TextEditor extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const TextEditor({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        maxLines: null,
        expands: true,
        style: TextStyle(fontFamily: 'Cursive'), // Handwritten font style
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Start writing...',
        ),
        onChanged: onChanged,
      ),
    );
  }
}
