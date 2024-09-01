import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controler
  TextEditingController myControler = TextEditingController();

  //greeting message method
  String greetingMessage = "";
  //greetUser method
  void greetUser() {
    String userName = myControler.text;

    setState(() {
      greetingMessage = "hello," + " " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greeting message
              Text(greetingMessage),

              //textfield
              TextField(
                controller: myControler,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Name"),
              ),

              //button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
