import 'package:flutter/material.dart';
import '../widgets/text_editor.dart';
import '../widgets/toolbar.dart';
import '../utils/history_manager.dart';

class NotePadScreen extends StatefulWidget {
  const NotePadScreen({super.key});

  @override
  _NotePadScreenState createState() => _NotePadScreenState();
}

class _NotePadScreenState extends State<NotePadScreen> {
  final TextEditingController textController = TextEditingController();
  final HistoryManager historyManager = HistoryManager();

  @override
  void initState() {
    super.initState();
    historyManager.addToHistory(textController.text);
  }

  void undo() {
    historyManager.undo(textController);
  }

  void redo() {
    historyManager.redo(textController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Realistic NotePad'),
        actions: [
          IconButton(icon: const Icon(Icons.undo), onPressed: undo),
          IconButton(icon: const Icon(Icons.redo), onPressed: redo),
        ],
      ),
      body: Column(
        children: [
          const Toolbar(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/paper_texture.png'), // Add a paper texture image
                  fit: BoxFit.cover,
                ),
              ),
              child: TextEditor(
                controller: textController,
                onChanged: (text) => historyManager.addToHistory(text),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
