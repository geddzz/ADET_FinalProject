import 'package:flutter/material.dart';
import 'package:event_management/screens/attendee_sc/forgot_password.dart';
import 'package:event_management/screens/attendee_sc/sign_up.dart';
import 'package:event_management/screens/attendee_sc/attendee_ui.dart';
import 'package:event_management/screens/organizer_sc/organizer_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Event Management App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          centerTitle: true,
        ),
        body: const MyStatefulWidget(),
        floatingActionButton: organizer_button(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Attendee Sign in',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w500, fontSize: 30),
            )),
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
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => forgot_pass()));
            },
            child: const Text('Forgot Password',
                style: TextStyle(color: Colors.black))),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                var _email = emailController.text;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => attendee_ui(email: _email)));
              },
            )),
        Row(
          children: <Widget>[
            const Text('Do not have an account?'),
            TextButton(
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //signup screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sign_up()));
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    ));
  }
}

class organizer_button extends StatelessWidget {
  const organizer_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const organizer_login()));
      },
      label: Text('Organizer'),
    );
  }
}
