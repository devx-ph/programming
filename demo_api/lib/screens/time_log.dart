import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';

class TimeLogPage extends StatefulWidget {
  const TimeLogPage({Key? key}) : super(key: key);

  @override
  State<TimeLogPage> createState() => _TimeLogPageState();
}

class _TimeLogPageState extends State<TimeLogPage> {
  TextEditingController empnoController = TextEditingController();
  TextEditingController datetimelogController = TextEditingController();
  TextEditingController latController = TextEditingController();
  TextEditingController longController = TextEditingController();
  TextEditingController ipAddrController = TextEditingController();

  // String formatter = DateFormat('yyyy-MM-dd').format(DateTime.now());

  // @override
  // void initState() {
  //   super.initState();
  //   datetimelogController.text = formatter;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Timelog'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          TextField(
            controller: empnoController,
            decoration: const InputDecoration(
              hintText: 'Employee Number',
            ),
          ),
          TextField(
            controller: datetimelogController,
            decoration: const InputDecoration(
              hintText: 'DateTime Log',
            ),
          ),
          TextField(
            controller: latController,
            decoration: const InputDecoration(
              hintText: 'Latitude',
            ),
          ),
          TextField(
            controller: longController,
            decoration: const InputDecoration(
              hintText: 'Longitude',
            ),
          ),
          TextField(
            controller: ipAddrController,
            decoration: const InputDecoration(
              hintText: 'IP Address',
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              submitData();
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Submit',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> submitData() async {
    // submit data to the server
    final empNo = empnoController.text;
    final datetimelog = datetimelogController.text;
    final lat = latController.text;
    final long = longController.text;
    final ipAddress = ipAddrController.text;

    final Map<String, dynamic> params = {
      "emp_no": empNo,
      "datetimelog": datetimelog,
      "lat": lat,
      "long": long,
      "ip_address": ipAddress
    };
    // for loop for post
    var data = '';
    params.forEach((key, value) {
      data += '$key=$value&';
    });
    final trimmed = data.trimRight();
    final body = trimmed.substring(0, trimmed.length - 1);

    const url =
        'http://demo.cmvsd.com/hrmanager_demo/timekeeping/addTimekeeping?';
    final uri = Uri.parse(url + body);

    final response = await http.post(
      uri,
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    print(uri);
    print(response.body);
    print(response.statusCode);
    print('rtrimed body = $body');
    if (response.statusCode == 200) {
      // show success message
      empnoController.text = '';
      datetimelogController.text = '';
      latController.text = '';
      longController.text = '';
      ipAddrController.text = '';
      showSuccessMessage('Creation Success');
    } else {
      // show error message
      showErrorMessage('Creation Failed');
    }
  }

  void showSuccessMessage(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.green,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showErrorMessage(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
