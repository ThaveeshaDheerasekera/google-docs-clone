import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  //const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Store - Login Screen'),
      ),
      body: const Center(
        child: Text('TODO://login_screen.dart'),
      ),
    );
  }
}
