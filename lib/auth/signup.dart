import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> with SingleTickerProviderStateMixin {
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
              ElevatedButton(child: Text("Signup"), onPressed: () async => {})
            ]),
          ),
        ));

    /*Container(
      child: Text("Welcome to Twitter"),
    );*/
  }
}
