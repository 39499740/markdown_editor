library markdown_editor;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

Widget MarkDownEditor() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1)
    ),
    child: Column(
      children: [
        _toolBar(),
        _editArea()
      ],
    ),
  );
}

Widget _toolBar() {
  return Container(
    child: Row(
      children: [
        InkWell(
          key: const Key('bold_button'),
//          onTap: () => onTap(MarkdownType.bold),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.format_bold,
            ),
          ),
        ),
        InkWell(
          key: const Key('italic_button'),
//          onTap: () => onTap(MarkdownType.italic),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.format_italic,
            ),
          ),
        ),
        for (int i = 1; i <= 3; i++)
          InkWell(
            key: Key('H${i}_button'),
//            onTap: () => onTap(MarkdownType.title, titleSize: i),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'H$i',
                style: TextStyle(fontSize: (18 - i).toDouble(), fontWeight: FontWeight.w700),
              ),
            ),
          ),
        InkWell(
          key: const Key('link_button'),
//          onTap: () => onTap(MarkdownType.link),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.link,
            ),
          ),
        ),
        InkWell(
          key: const Key('list_button'),
//          onTap: () => onTap(MarkdownType.list),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.list,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _toolBtn(String title, Icon icon, Function onPress) {
  return IconButton(
    tooltip: title,
    icon: icon,
    iconSize: 30,
    color: Colors.black,
    onPressed: () => onPress,
  );
}

Widget _editArea() {
  return Container();
}