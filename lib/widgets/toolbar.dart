import 'package:flutter/material.dart';
import 'menu_items.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: const Row(
        children: [
          FontSizeMenu(),
          FontStyleMenu(),
          ColorPicker(),
          AlignmentMenu(),
          HighlighterMenu(), // Add highlighter menu
        ],
      ),
    );
  }
}
