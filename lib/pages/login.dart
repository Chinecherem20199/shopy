import 'package:flutter/material.dart';
import 'package:shopy/resources/color_manager.dart';

import '../resources/sized_manager.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: screenWidth(context) * 0.20,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: ColorManager.black2,
                      fontFamily: "Poppins",
                      fontSize: screenHeight(context) * 0.05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.20,
                  ),
                  TextFormField(
                    enableSuggestions: true,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      _email = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter your email",
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      alignLabelWithHint: true,
                    ),
                    validator: ((value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return "Invalid email address ";
                      }
                      return null;
                    }),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.02,
                  ),
                  TextFormField(
                    enableSuggestions: true,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      _password = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter your password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      alignLabelWithHint: true,
                    ),
                    validator: ((value) {
                      if (value!.isEmpty || value.length < 6) {
                        return "Password must be greater than or equal to 6 character";
                      }
                      return null;
                    }),
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
