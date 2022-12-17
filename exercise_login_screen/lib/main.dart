import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sign Up Screen With Flutter',
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget _buildSignUpTop() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: const Text(
            "SIGN UP",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(
      {required String title, required double paddingNumber}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: paddingNumber),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtonSignUp() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.pink[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "SIGN UP",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildIconSocial({required String icon, required Color color}) {
    return Container(
      height: 48,
      width: 48,
      margin: const EdgeInsets.only(top: 40, bottom: 8, left: 8, right: 8),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 4,
        ),
      ),
      child: Text(
        icon,
        style: TextStyle(
          fontSize: 30, 
          fontWeight: FontWeight.w900,
          color: color,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildAlreadyAUser() {
    return Text.rich(
      TextSpan(
        text: "Already a User? ",
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey[600],
        ),
        children: const [
          TextSpan(
            text: "LOGIN",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildSignUpTop(),
                _buildTextField(title: 'Email', paddingNumber: 20),
                _buildTextField(title: "Password", paddingNumber: 30),
                _buildButtonSignUp(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIconSocial(icon: "G", color: Colors.red),
                    _buildIconSocial(icon: "f", color: Colors.blue),
                    _buildIconSocial(icon: "in", color: Colors.blueAccent),
                  ],
                ),
                _buildAlreadyAUser(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
