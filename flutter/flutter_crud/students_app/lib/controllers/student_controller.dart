import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:students_app/models/student_model.dart';

class StudentController {
  // constants
  static const String viewURL = "http://192.168.1.13/students_api/view.php";
  static const String createURL = "http://192.168.1.13/students_api/create.php";
  static const String deleteURL = "http://192.168.1.13/students_api/delete.php";
  static const String updateURL = "http://192.168.1.13/students_api/update.php";

  // get data
  List<StudentModel> studentsFromJson(String jsonstring) {
    final data = json.decode(jsonstring);

    return List<StudentModel>.from(
        data.map((item) => StudentModel.fromJson(item)));
  }

  Future<List<StudentModel>> getStudents() async {
    final response = await http.get(Uri.parse(viewURL));

    if (response.statusCode == 200) {
      List<StudentModel> list = studentsFromJson(response.body);
      return list;
    } else {
      return <StudentModel>[];
    }
  }

  // set data or add data
  Future<String> addStudent(StudentModel studentModel) async {
    final response =
        await http.post(Uri.parse(createURL), body: studentModel.toJsonAdd());
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Error";
    }
  }

  // update data
  Future<String> updateStudent(StudentModel studentModel) async {
    final response = await http.post(
      Uri.parse(updateURL),
      body: studentModel.toJsonDeleteUpdate(),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Error";
    }
  }

  // delete data
  Future<String> deleteStudent(StudentModel studentModel) async {
    final response = await http.post(
      Uri.parse(deleteURL),
      body: studentModel.toJsonDeleteUpdate(),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Error";
    }
  }
}
