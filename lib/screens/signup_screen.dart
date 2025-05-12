import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isAccept = false;
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
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text("Create Account",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  const Text("Simplify your crypto payments with us",
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 32),
                  const CustomTextField(
                      label: "First Name", icon: Icons.person_outline),
                  const SizedBox(height: 16),
                  const CustomTextField(
                      label: "Last Name", icon: Icons.person_outline),
                  const SizedBox(height: 16),
                  const CustomTextField(
                      label: "Email",
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 16),
                  const CustomTextField(
                    label: "Password",
                    icon: Icons.lock_outline,
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                          value: isAccept,
                          onChanged: (value) {
                            setState(() {
                              isAccept = value!;
                            });
                          }),
                      GestureDetector(
                        onTap: () async {
                          final Uri url =
                              Uri.parse('https://pretium.africa/term-of-use');
                          try {
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Could not open Terms and Conditions')),
                              );
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: const Text(
                          "Accept Terms and Conditions",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomButton(
                      text: "Create Account",
                      onPressed: () {
                        _formKey.currentState!.validate();
                      }),
                  SizedBox(height: height * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/login'),
                        child: const Text("Login",
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
