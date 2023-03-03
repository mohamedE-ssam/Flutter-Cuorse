import 'package:flutter/material.dart';
import 'package:tasks/pages/hom_screen.dart';
import 'package:tasks/pages/register_screen.dart';

import '../shared/wave_design.dart';
import '../widgets/my_button.dart';
import '../widgets/my_textfieldd.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.purple,
                  alignment: Alignment.center,
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              MyTextField(
                hint: 'Email',
                icon1: Icons.person,
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (emailController.text.contains('@') == false ||
                      emailController.text.contains('.') == false) {
                    return 'please enter valid email ';
                  }
                  return null;
                },
              ),
              MyTextField(
                hint: 'Password',
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your password';
                  } else if (value.length < 6) {
                    return 'password must be at least 6 characters ';
                  }
                  return null;
                },
                keyboardtype: TextInputType.visiblePassword,
                ispassword: ispassword,
                icon1: Icons.lock,
                icon2: IconButton(
                    onPressed: () {
                      setState(() {
                        ispassword = !ispassword;
                      });
                    },
                    icon: ispassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
              ),
              MyButton(
                title: 'Login',
                onpressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  }
                },
              ),
              MyButton(
                title: 'Regitser',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                },
                color: Colors.white,
                textcolor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
