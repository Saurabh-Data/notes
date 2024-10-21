import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var user = await _auth.registerWithEmailAndPassword(
                  _emailController.text,
                  _passwordController.text,
                );
                if (user == null) {
                  setState(() {
                    error = 'Could not register with those credentials';
                  });
                } else {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                }
              },
              child: const Text('Sign Up'),
            ),
            Text(error, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
