// import 'package:flutter/material.dart';
// import 'package:pretium_demo/routes/app_routes.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const SizedBox(height: 32),
//               Center(
//                 child: Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.green[50],
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(Icons.account_balance_wallet_rounded,
//                       size: 40, color: Colors.teal),
//                 ),
//               ),
//               const SizedBox(height: 24),
//               const Center(
//                 child: Text("Welcome Back!",
//                     style:
//                         TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//               ),
//               const SizedBox(height: 8),
//               const Center(
//                   child: Text("Sign in to continue",
//                       style: TextStyle(color: Colors.grey))),
//               SizedBox(
//                 height: height * 0.08,
//               ),
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
//               const SizedBox(height: 8),
//               Row(
//                 children: [
//                   Checkbox(value: false, onChanged: (_) {}),
//                   const Text("Remember me"),
//                   const Spacer(),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text("Forgot Password?"),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 8),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   backgroundColor: Colors.teal,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                 ),
//                 child: const Text("Login",
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//               ),
//               SizedBox(
//                 height: height * 0.1,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don't have an account?"),
//                   const SizedBox(width: 4),
//                   InkWell(
//                     onTap: () => Navigator.pushNamed(context, AppRoutes.signup),
//                     child: const Text("Sign Up",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.teal)),
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
import '../routes/app_routes.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const SizedBox(height: 32),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.account_balance_wallet_rounded,
                      size: 40, color: Colors.teal),
                ),
              ),
              const SizedBox(height: 24),
              const Center(
                child: Text("Welcome Back!",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
                  Checkbox(value: false, onChanged: (_) {}),
                  const Text("Remember me"),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password?"),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              CustomButton(text: "Login", onPressed: () {}),
              SizedBox(height: height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, AppRoutes.signup),
                    child: const Text("Sign Up",
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
