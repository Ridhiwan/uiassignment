import 'package:flutter/material.dart';

import 'data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> staticData = MyData.data;
  Map<int, bool> selectedFlag = {};
  bool isSelectionMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          Map data = staticData[index];
          selectedFlag[index] = selectedFlag[index] ?? false;
          bool? isSelected = selectedFlag[index];

          return ListTile(
            onLongPress: () => onLongPress(isSelected!, index),
            onTap: () => onTap(isSelected!, index),
            title: Text("${data['name']}"),
            subtitle: Text("${data['email']}"),
            leading: _buildSelectIcon(isSelected!, data),
          );
        },
        itemCount: staticData.length,
      )
    );
  }

  void onTap(bool isSelected, int index) {
    if (true) {
      setState(() {
        selectedFlag[index] = !isSelected;
        isSelectionMode = selectedFlag.containsValue(true);
      });
    }
  }

  void onLongPress(bool isSelected, int index) {
    setState(() {
      selectedFlag[index] = !isSelected;
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  Widget _buildSelectIcon(bool isSelected, Map data) {
    if (true) {
      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,
      );
    }
  }

}
