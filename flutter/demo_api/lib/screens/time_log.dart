import 'dart:convert';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class TimeLogPage extends StatefulWidget {
  const TimeLogPage({Key? key}) : super(key: key);

  @override
  State<TimeLogPage> createState() => _TimeLogPageState();
}

class _TimeLogPageState extends State<TimeLogPage> {
  TextEditingController empnoController = TextEditingController();
  TextEditingController latController = TextEditingController();
  TextEditingController longController = TextEditingController();
  TextEditingController dateTimeController = TextEditingController();
  TextEditingController timeInController = TextEditingController();
  TextEditingController timeOutController = TextEditingController();
  // location
  late String lat = '';
  late String long = '';

  String location = '';

  // getting current location
  Future<Position> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // return Future.error('Location services are disabled');
      showErrorMessage('Location services are disabled');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // return Future.error('Location permission are denied');
        showErrorMessage('Location services are disabled');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // return Future.error(
      //     'Location permission are permanetly denied, we cannot request');
      showErrorMessage(
          'Location services are permanetly denied, we cannot request');
    }

    return await Geolocator.getCurrentPosition();
  }

  DateTime currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation().then((value) {
      latController.text = '${value.latitude}';
      longController.text = '${value.longitude}';
    });
    dateTimeController.text = DateFormat('yyyy-MM-dd').format(currentTime);
    timeInController.text = 'S';
    timeOutController.text = 'E';
  }

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
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              submitData();
              timeIn();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Time In',
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              submitData();
              timeOut();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Time Out',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> timeOut() async {
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('-', '')
        .replaceAll(':', '');
    final empNo = empnoController.text;
    final timeout = timeOutController.text;
    final date = dateTimeController.text;
    final imgname = '$empNo' '_$time' '.jpg';
    // DateTime now = DateTime.now();
    // DateFormat formatter = DateFormat('yyyy-MM-dd');
    // String formatted = formatter.format(now);
    // final date = DateTime.parse(formatted);

    final Map<String, dynamic> params = {
      "emp_no": empNo,
      "in_out": timeout,
      "img_name": imgname,
      "date_added": date.toString(),
    };

    var data = '';
    params.forEach((key, value) {
      data += '$key=$value&';
    });
    final trimmed = data.trimRight();
    final body = trimmed.substring(0, trimmed.length - 1);
    const url =
        'http://demo.cmvsd.com/hrmanager_demo/timekeeping/addTimekeepingImg?';
    final uri = Uri.parse(url + body);
    final response = await http.post(
      uri,
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    print('time out $uri');
    print(response.statusCode);
    print(imgname);
    if (response.statusCode == 200) {
      // show success message
      showSuccessMessage('Time Out Success');
    } else {
      // show error message
      showErrorMessage('Time Out Failed');
    }
  }

  Future<void> timeIn() async {
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('-', '')
        .replaceAll(':', '');
    final empNo = empnoController.text;
    final timein = timeInController.text;
    final date = dateTimeController.text;
    final imgname = '$empNo' '_$time' '.jpg';
    // DateTime now = DateTime.now();
    // DateFormat formatter = DateFormat('yyyy-MM-dd');
    // String formatted = formatter.format(now);
    // final date = DateTime.parse(formatted);

    final Map<String, dynamic> params = {
      "emp_no": empNo,
      "in_out": timein,
      "img_name": imgname,
      "date_added": date.toString(),
    };

    var data = '';
    params.forEach((key, value) {
      data += '$key=$value&';
    });
    final trimmed = data.trimRight();
    final body = trimmed.substring(0, trimmed.length - 1);
    const url =
        'http://demo.cmvsd.com/hrmanager_demo/timekeeping/addTimekeepingImg?';
    final uri = Uri.parse(url + body);
    final response = await http.post(
      uri,
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    print('time in $uri');
    print(response.statusCode);
    print(imgname);
    if (response.statusCode == 200) {
      // show success message
      showSuccessMessage('Time In Success');
    } else {
      // show error message
      showErrorMessage('Time In Failed');
    }
  }

  Future<void> submitData() async {
    // ip addr
    String ip;
    final ipv4 = await Ipify.ipv4();
    ip = ipv4;

    // submit data to the server
    final empNo = empnoController.text;
    final getLat = latController.text;
    final getLong = longController.text;
    final date = dateTimeController.text;

    final Map<String, dynamic> params = {
      "emp_no": empNo,
      "datetimelog": date.toString(),
      "lat": getLat,
      "long": getLong,
      "ip_address": ip
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
    print(response.statusCode);
    print(uri);
    print('data = $body');
    if (response.statusCode == 200) {
      // show success message
      empnoController.text = '';
    } else {
      // show error message
      showErrorMessage('Error Occurred');
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
