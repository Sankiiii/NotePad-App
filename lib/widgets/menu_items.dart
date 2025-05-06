import 'package:flutter/material.dart';

class FontSizeMenu extends StatelessWidget {
  const FontSizeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<double>(
      icon: const Icon(Icons.format_size),
      tooltip: 'Font size',
      onSelected: (size) {},
      itemBuilder: (context) => [
        const PopupMenuItem(value: 12, child: Text('Small (12)')),
        const PopupMenuItem(value: 16, child: Text('Medium (16)')),
        const PopupMenuItem(value: 20, child: Text('Large (20)')),
        const PopupMenuItem(value: 24, child: Text('Extra Large (24)')),
      ],
    );
  }
}

class FontStyleMenu extends StatelessWidget {
  const FontStyleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<FontWeight>(
      icon: const Icon(Icons.format_bold),
      tooltip: 'Font style',
      onSelected: (weight) {},
      itemBuilder: (context) => [
        const PopupMenuItem(value: FontWeight.normal, child: Text('Normal')),
        const PopupMenuItem(value: FontWeight.bold, child: Text('Bold')),
      ],
    );
  }
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Color>(
      icon: const Icon(Icons.color_lens),
      tooltip: 'Text color',
      onSelected: (color) {},
      itemBuilder: (context) => [
        _buildColorMenuItem(Colors.black, 'Black'),
        _buildColorMenuItem(Colors.blue, 'Blue'),
        _buildColorMenuItem(Colors.red, 'Red'),
      ],
    );
  }

  PopupMenuItem<Color> _buildColorMenuItem(Color color, String label) {
    return PopupMenuItem(
      value: color,
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: color,
            margin: const EdgeInsets.only(right: 8),
          ),
          Text(label),
        ],
      ),
    );
  }
}

class AlignmentMenu extends StatelessWidget {
  const AlignmentMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<TextAlign>(
      icon: const Icon(Icons.format_align_left),
      tooltip: 'Text alignment',
      onSelected: (alignment) {},
      itemBuilder: (context) => [
        const PopupMenuItem(value: TextAlign.left, child: Text('Left')),
        const PopupMenuItem(value: TextAlign.center, child: Text('Center')),
        const PopupMenuItem(value: TextAlign.right, child: Text('Right')),
      ],
    );
  }
}

class HighlighterMenu extends StatelessWidget {
  const HighlighterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Color>(
      icon: const Icon(Icons.highlight),
      tooltip: 'Highlight color',
      onSelected: (color) {},
      itemBuilder: (context) => [
        _buildColorMenuItem(Colors.yellow.shade200, 'Yellow'),
        _buildColorMenuItem(Colors.green.shade200, 'Green'),
        _buildColorMenuItem(Colors.blue.shade200, 'Blue'),
      ],
    );
  }

  PopupMenuItem<Color> _buildColorMenuItem(Color color, String label) {
    return PopupMenuItem(
      value: color,
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: color,
            margin: const EdgeInsets.only(right: 8),
          ),
          Text(label),
        ],
      ),
    );
  }
}
