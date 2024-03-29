import 'package:flutter/material.dart';
import 'package:lab_mid/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    return Scaffold(
      body: Center(
          child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.black),
              left: BorderSide(width: 1.0, color: Colors.black),
              right: BorderSide(width: 1.0, color: Colors.black),
              bottom: BorderSide(width: 1.0, color: Colors.black),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        width: 300,
        height: 600,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/pfp.jpeg'),
                ),
              ),
              const Text(
                "Sign in",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Enter your email",
                ),
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                ),
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Enter your name",
                ),
                controller: nameController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Enter your phone",
                ),
                controller: phoneController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Enter your address",
                ),
                controller: addressController,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.blueAccent),
                onPressed: () async {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      nameController.text.isEmpty ||
                      phoneController.text.isEmpty ||
                      addressController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Incomplete information")));
                    return;
                  }

                  await SharedPreferences.getInstance().then((value) {
                    value.setString("username", nameController.text);
                    value.setString("password", passwordController.text);
                  });

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Account created successfully")));

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainView();
                  }));
                },
                child: const Text("Sign in"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
