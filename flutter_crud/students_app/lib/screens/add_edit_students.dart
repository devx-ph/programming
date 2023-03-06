import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:students_app/components/myinput_textfield.dart';
import 'package:students_app/controllers/student_controller.dart';
import 'package:students_app/models/student_model.dart';
import 'package:students_app/screens/students.dart';

class AddEditStudent extends StatefulWidget {
  final StudentModel? studentModel;
  final index;

  const AddEditStudent({
    Key? key,
    this.studentModel,
    this.index,
  }) : super(key: key);

  @override
  State<AddEditStudent> createState() => _AddEditStudentState();
}

class _AddEditStudentState extends State<AddEditStudent> {
  bool isEditedMode = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController id = TextEditingController();

  // Add student
  newStudent(StudentModel studentModel) async {
    await StudentController().addStudent(studentModel).then((success) => {
          FlutterToastr.show(
            'Student is Created Successfully',
            context,
            duration: FlutterToastr.lengthLong,
            position: FlutterToastr.center,
            backgroundColor: Colors.green,
          ),
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => const StudentsPage()),
            ),
          ),
        });
  }

  // Update student
  updatedStudent(StudentModel studentModel) async {
    await StudentController()
        .updateStudent(studentModel)
        .then((success) => {
              FlutterToastr.show(
                "Student is Updated Successfully",
                context,
                duration: FlutterToastr.lengthLong,
                position: FlutterToastr.center,
                backgroundColor: Colors.green,
              ),
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const StudentsPage()),
                ),
              ),
            })
        .onError(((error, stackTrace) => {
              FlutterToastr.show(
                "Student is not Updated",
                context,
                duration: FlutterToastr.lengthLong,
                position: FlutterToastr.center,
                backgroundColor: Colors.red,
              ),
            }));
  }

  @override
  void initState() {
    if (widget.index != null) {
      isEditedMode = true;
      name.text = widget.studentModel?.name;
      email.text = widget.studentModel?.email;
      address.text = widget.studentModel?.address;
      id.text = widget.studentModel?.id;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: ((context) => const StudentsPage()),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(isEditedMode ? "Update Student" : "Add Student"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            // some text
            const Center(
              child: Text(
                'Student Registration Form',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            const SizedBox(height: 30.0),

            // form and it's text fields
            Form(
              key: _formkey,
              child: Column(
                children: [
                  MyTextFields(
                    hintedText: 'Full Name here',
                    labelText: 'Name',
                    inputController: name,
                  ),
                  const SizedBox(height: 10),
                  MyTextFields(
                    hintedText: 'Example@email.com',
                    labelText: 'Email',
                    inputController: email,
                  ),
                  const SizedBox(height: 10),
                  MyTextFields(
                    hintedText: 'Fake St. 123',
                    labelText: 'Address',
                    inputController: address,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            // submit button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200.0, 60.0),
                elevation: 20.0,
              ),
              onPressed: () {
                if (isEditedMode == true) {
                  if (_formkey.currentState!.validate()) {
                    StudentModel studentModel = StudentModel(
                      id: id.text,
                      name: name.text,
                      email: email.text,
                      address: address.text,
                    );
                    updatedStudent(studentModel);
                    name.clear();
                    email.clear();
                    address.clear();
                  }
                } else {
                  // if form is validated let us save some data
                  // else we will see error
                  if (_formkey.currentState!.validate()) {
                    StudentModel studentModel = StudentModel(
                      name: name.text,
                      email: email.text,
                      address: address.text,
                    );
                    newStudent(studentModel);
                    name.clear();
                    email.clear();
                    address.clear();
                  }
                }
              },
              child: Text(isEditedMode ? "Update" : "Save"),
            ),
          ],
        ),
      ),
    );
  }
}
