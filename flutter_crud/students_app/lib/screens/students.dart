import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:students_app/controllers/student_controller.dart';
import 'package:students_app/models/student_model.dart';
import 'package:students_app/screens/add_edit_students.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  List<StudentModel> studentList = [];
  final StreamController _streamController = StreamController();

  // Get student
  Future getAllStudents() async {
    studentList = await StudentController().getStudents();
    _streamController.sink.add(studentList);
  }

  // Delete student
  removeStudent(StudentModel studentModel) async {
    await StudentController()
        .deleteStudent(studentModel)
        .then((success) => {
              FlutterToastr.show(
                "Student Deleted Successfully",
                context,
                duration: FlutterToastr.lengthLong,
                position: FlutterToastr.center,
                backgroundColor: Colors.green,
              ),
            })
        .onError(
          ((error, stackTrace) => {
                FlutterToastr.show(
                  "Student is not Deleted",
                  context,
                  duration: FlutterToastr.lengthLong,
                  position: FlutterToastr.center,
                  backgroundColor: Colors.red,
                ),
              }),
        );
  }

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      getAllStudents();
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => const AddEditStudent()),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Students Page'),
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: _streamController.stream,
          builder: (context, snapshots) {
            if (snapshots.hasData) {
              return ListView.builder(
                  itemCount: studentList.length,
                  itemBuilder: ((context, index) {
                    StudentModel student = studentList[index];
                    return ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => AddEditStudent(
                                    studentModel: student,
                                    index: index,
                                  ))),
                        );
                      },
                      leading: CircleAvatar(
                        child: Text(student.name[0]),
                      ),
                      title: Text(student.name),
                      subtitle: Text(student.email),
                      trailing: IconButton(
                        onPressed: () {
                          removeStudent(student);
                        },
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
