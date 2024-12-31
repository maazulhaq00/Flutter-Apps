import 'package:c10_input/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String errorMessage = "";
  bool isHidden = true;

  void Login() {
    if (emailController.text == "maaz@abc.com" &&
        passwordController.text == "maaz1234") {
      // login
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(email: emailController.text),
        ),
      );
    } else {
      setState(() {
        errorMessage = "Invalid Email or Password";
      });
    }
  }

  void toggleVisibility(){
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: isHidden,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: toggleVisibility,
                  icon: Icon(Icons.remove_red_eye_outlined),
                ),
              )
            ],
          ),
        ),
        OutlinedButton(onPressed: Login, child: Text('Login')),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.red),
          ),
        )
      ]),
    );
    ;
  }
}
