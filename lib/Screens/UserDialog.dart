import 'package:flutter/material.dart';

import '../User.dart';

class AddUserDialog extends StatefulWidget {
   final Function(User) adduser;
   AddUserDialog({required this.adduser});
  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextfiled(String hint, TextEditingController controller) {
      return Container(
        margin: const EdgeInsets.all(4.0),
        child: TextField(
          decoration: InputDecoration(
              labelText: hint,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              ))),
          controller: controller,
        ),
      );
    }

    TextEditingController usernameController = TextEditingController();
    TextEditingController playersController = TextEditingController();
    TextEditingController coachesController = TextEditingController();
    TextEditingController GamesNameController = TextEditingController();
    TextEditingController CenterHeadController = TextEditingController();
    TextEditingController LocationController = TextEditingController();


    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 600,
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
           const  Text("Add User",style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            buildTextfiled('userName', usernameController),
                  buildTextfiled('Players', playersController),
                  buildTextfiled('Coaches', coachesController),
                  buildTextfiled('Games Name', GamesNameController),
                  buildTextfiled('Center Head', CenterHeadController),
                  buildTextfiled('Location', LocationController),
                  ElevatedButton(
                      onPressed: () {
                        final user = User(
                            Username: usernameController.text,
                            players: playersController.text,
                            coaches: coachesController.text,
                        Location: LocationController.text,
                        GamesName: GamesNameController.text,
                        CenterHead: CenterHeadController.text);
                         widget.adduser(user);
                         Navigator.of(context).pop();
                      },
                      child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
