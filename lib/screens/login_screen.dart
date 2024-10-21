import 'package:flutter/material.dart';
// import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
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
              onPressed: () {
                //  sign-in logic
                // var user = await _auth.signInWithEmailAndPassword(
                //   _emailController.text,
                //   _passwordController.text,
                // );
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (_) => const HomeScreen()),
                // );
              },
              child: const Text('Login'),
            ),
            Text(error, style: TextStyle(color: Colors.red)),
            // sign-up button
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupScreen()));
            //   },
            //   child: const Text('Don\'t have an account? Sign Up'),
            // ),
          ],
        ),
      ),
    );
  }
}
