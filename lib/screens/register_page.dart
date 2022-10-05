import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {},
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(
                    hintText: ' Email',
                    icon: Icon(Icons.email),
                    fillColor: Colors.blue,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    print(value);
                  },
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(
                    hintText: ' Password',
                    fillColor: Colors.blue,
                    filled: true,
                    icon: Icon(Icons.lock_outline),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: () async {}, child: Text('Sign in')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
