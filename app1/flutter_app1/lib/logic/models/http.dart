import '../business_objects/business_objects.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'user.dart';

class Http {
  // localhost || 127.0.0.1 (linux server)
  final url = 'http://127.0.0.1:8000/';
  final users = 'users/';
  final headers = {'Content-Type': 'application/json'};
  final encoding = Encoding.getByName('utf-8');

  Http();

  Future<List<User>> makeUserGetRequest() async {
    http.Response response = await http.get(Uri.parse('$url$users'));
    List<User> result = List<User>.from(
        json.decode(response.body).map((json) => User.fromJson((json))));
    result.sort(((a, b) => a.id.compareTo(b.id)));
    print(getstatusCode(response.statusCode));
    return result;
  }

  makeUserPostRequest(User user) async {
    String body = json.encode(user.toJson());
    http.Response response = await http.post(Uri.parse('$url$users'),
        headers: headers, body: body, encoding: encoding);
    print(response.body);
    print(
        'Response status ${response.statusCode} => ${getstatusCode(response.statusCode)}');
  }

  makeUserPutRequest(User user) async {
    String body = json.encode(user.toJson());
    http.Response response = await http.put(Uri.parse('$url$users${user.id}'),
        headers: headers, body: body, encoding: encoding);
    print(response.body);
    print(
        'Response status ${response.statusCode} => ${getstatusCode(response.statusCode)}');
  }

  makeUserDeleteRequest(User user) async {
    http.Response response =
        await http.delete(Uri.parse('$url$users${user.id}'), headers: headers);
    print(response.body);
    print(
        'Response status ${response.statusCode} => ${getstatusCode(response.statusCode)}');
  }
}
