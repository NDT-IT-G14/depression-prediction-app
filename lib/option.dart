import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Option(),
      ),
    );
  }
}

class Option extends StatefulWidget {
  const Option({super.key});

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  int _selectedIndex = 0;

  List<int> _responses = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: const Text('Item'),
            selected: index == _selectedIndex,
            onTap: () {
              setState(() {
                _selectedIndex = index;
                _responses.add(_selectedIndex);
                print(_responses);
              });
            },
          ),
        );
      },
    );
  }
}
