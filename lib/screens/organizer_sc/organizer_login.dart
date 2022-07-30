import 'package:flutter/material.dart';
import 'package:event_management/screens/organizer_sc/organizer_ui.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class organizer_login extends StatelessWidget {
  const organizer_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organizer Sign in'),
        centerTitle: true,
      ),
      body: Material(
        child: ListView(children: <Widget>[
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
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  var _email = emailController.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => organizer_ui(email: _email)));
                },
              )),
        ]),
      ),
    );
  }
}
