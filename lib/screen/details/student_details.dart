import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/update.dart' as update_controller;

class StudentUpdate extends StatefulWidget {
  const StudentUpdate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StudentUpdate> createState() => _StudentUpdateState();
}

class _StudentUpdateState extends State<StudentUpdate> {
  TextEditingController nameController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController rollnoController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController courseDurationController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();

  final snackBarSuccess = const SnackBar(
    content: Text('Update Successful'),
    backgroundColor: Colors.green,
  );
  final snackBarFailed = const SnackBar(
    content: Text('Can not update information'),
    backgroundColor: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NyayaagAppBarWidget(
        appBar: AppBar(),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 176, 198, 146)),
        child: Row(
          children: <Widget>[
            Image.asset(
              'design/logindesign.png',
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 32,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Update your information!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 13, 84, 15),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    margin: const EdgeInsets.only(right: 550, left: 550),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: collegeController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name of college',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: rollnoController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Roll No',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: courseController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Course',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: courseDurationController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Course duration',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: addressController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Address',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: pincodeController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Pincode',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      update_controller.Update.student(
                              nameController.text,
                              collegeController.text,
                              rollnoController.text,
                              courseController.text,
                              courseDurationController.text,
                              addressController.text,
                              pincodeController.text)
                          .then((response) {
                        if (response == 200) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarSuccess);
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarFailed);
                        }
                      });
                    },
                    child: const Text('Update Details'),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const NyayaagFooterWidget(),
    );
  }
}
