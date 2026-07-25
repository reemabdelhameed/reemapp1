import 'package:flutter/material.dart';

class NewMainView extends StatefulWidget {
  const NewMainView({super.key});

  @override
  State<NewMainView> createState() => _NewMainViewState();
}

class _NewMainViewState extends State<NewMainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Note')),
      body: const Text('Write your note here'),
    );
  }
}
