// import 'package:flutter/material.dart';
//
// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const SizedBox(height: 16),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: IconButton(
//                   icon: const Icon(Icons.arrow_back),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               const Text("Create Account",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 4),
//               const Text("Simplify your crypto payments with us",
//                   style: TextStyle(color: Colors.grey)),
//               const SizedBox(height: 32),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   prefixIcon: Icon(Icons.person_outline),
//                   labelText: 'First Name',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   prefixIcon: Icon(Icons.person_outline),
//                   labelText: 'Last Name',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   prefixIcon: Icon(Icons.email_outlined),
//                   labelText: 'Email',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   prefixIcon: Icon(Icons.lock_outline),
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                   suffixIcon: Icon(Icons.visibility_off),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 children: [
//                   Checkbox(value: false, onChanged: (_) {}),
//                   const Text("Accept Terms and Conditions"),
//                 ],
//               ),
//               const SizedBox(height: 8),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   backgroundColor: Colors.green[700],
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                 ),
//                 child: const Text("Create Account",
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//               ),
//               const Spacer(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Already have an account?"),
//                   const SizedBox(width: 4),
//                   GestureDetector(
//                     onTap: () => Navigator.pushNamed(context, '/login'),
//                     child: const Text("Login",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.green)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
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
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
                  Checkbox(value: false, onChanged: (_) {}),
                  const Text("Accept Terms and Conditions"),
                ],
              ),
              const SizedBox(height: 8),
              CustomButton(text: "Create Account", onPressed: () {}),
              SizedBox(height: height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/login'),
                    child: const Text("Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.teal)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
