import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String email = " ";
  String password = " ";
  // FirebaseAuth

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 8,
          title: Text("Signup"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            child: Column(children: [
              TextFormField(
                onChanged: (val) => setState(() {
                  password = val;
                }),
              ),
              RaisedButton(child: Text("Signup"), onPressed: () async => {})
            ]),
          ),
        ));

    /*Container(
      child: Text("Welcome to Twitter"),
    );*/
  }
}
