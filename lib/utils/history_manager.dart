import 'package:flutter/material.dart';

class HistoryManager {
  List<String> history = [];
  int historyIndex = -1;

  void addToHistory(String text) {
    if (historyIndex < history.length - 1) {
      history.removeRange(historyIndex + 1, history.length);
    }
    history.add(text);
    historyIndex++;
  }

  void undo(TextEditingController controller) {
    if (historyIndex > 0) {
      historyIndex--;
      controller.text = history[historyIndex];
    }
  }

  void redo(TextEditingController controller) {
    if (historyIndex < history.length - 1) {
      historyIndex++;
      controller.text = history[historyIndex];
    }
  }
}
