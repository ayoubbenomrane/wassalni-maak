import 'package:flutter/material.dart';

import 'profile_setup.dart';
import 'set_password.dart';
import 'verification_screen.dart';
import 'welcome.dart'; // Import the WelcomeScreen

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileInputField(label: 'Enter your email'),
            const SizedBox(height: 16),
            PasswordInputField(label: 'Password'),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Navigate to VerificationScreen directly using MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerificationScreen()),
                );
              },
              child: const Text('Forgot Password?'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigate to WelcomeScreen when Log In button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
