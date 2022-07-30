import 'package:flutter/material.dart';

TextEditingController emailController = TextEditingController();

class forgot_pass extends StatelessWidget {
  const forgot_pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password?'),
        centerTitle: true,
      ),
      body: Material(
        child: ListView(
          children: <Widget>[
            Container(
              // Email
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Request Password Reset'),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => attendee_ui()));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
