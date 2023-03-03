import 'package:flutter/material.dart';
import 'package:tasks/pages/login_screen.dart';
import 'package:tasks/widgets/my_button.dart';
import '../shared/wave_design.dart';
import '../widgets/my_textfieldd.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool ispassword = true;
  bool ispassword2 = true;

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
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              MyTextField(
                hint: 'Name',
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your name';
                  }
                  return null;
                },
                icon1: Icons.person,
              ),
              MyTextField(
                hint: 'email',
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (value.contains('@') == false ||
                      value.contains('.') == false) {
                    return 'please enter valid email ';
                  }
                  return null;
                },
                keyboardtype: TextInputType.emailAddress,
                icon1: Icons.email,
              ),
              MyTextField(
                hint: 'Phone Number',
                controller: phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your phone';
                  } else if (value.contains('01') == false &&
                      value.length != 11) {
                    return 'please enter valid number ';
                  }
                  return null;
                },
                keyboardtype: TextInputType.number,
                icon1: Icons.phone,
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
              MyTextField(
                hint: 'Confirm Password',
                controller: confirmPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your password';
                  } else if (value != passwordController.text) {
                    return 'please enter the right password ';
                  }
                  return null;
                },
                keyboardtype: TextInputType.visiblePassword,
                ispassword: ispassword2,
                icon1: Icons.key,
                icon2: IconButton(
                    onPressed: () {
                      setState(() {
                        ispassword2 = !ispassword2;
                      });
                    },
                    icon: ispassword2
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                  title: 'Register',
                  onpressed: () {
                    formKey.currentState!.validate();
                  }),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                title: 'Login',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                color: Colors.white,
                textcolor: Colors.purple,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
