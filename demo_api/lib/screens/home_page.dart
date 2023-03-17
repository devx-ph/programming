import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _loadedData = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Data'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _loadedData.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(_loadedData[index]['emp_no']),
              subtitle: Text(_loadedData[index]['full_name']),
            );
          }),
    );
  }

  Future<void> _fetchData() async {
    const url = 'https://demo.cmvsd.com/hrmanager_demo/timekeeping';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _loadedData = data;
      });
    } else {
      // show error message
    }
  }
}
