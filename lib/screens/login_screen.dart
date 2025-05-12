import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../routes/app_routes.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.green[50],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.account_balance_wallet_rounded,
                          size: 40, color: Colors.teal),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text("Welcome Back!",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Text("Sign in to continue",
                        style: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(height: height * 0.08),
                  const CustomTextField(
                    label: 'Email',
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  const CustomTextField(
                    label: 'Password',
                    icon: Icons.lock_outline,
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Checkbox(
                          value: isRemember,
                          onChanged: (value) {
                            setState(() {
                              isRemember = value!;
                            });
                          }),
                      const Text("Remember me"),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.forgot);
                        },
                        child: const Text("Forgot Password?"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomButton(
                      text: "Login",
                      onPressed: () {
                        _formKey.currentState!.validate();
                      }),
                  SizedBox(height: height * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.signup),
                        child: const Text("Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
