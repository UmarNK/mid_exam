import 'package:flutter/material.dart';
import 'package:lab_mid/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        height: 400,
        padding: const EdgeInsets.all(20),
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
              "Login",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Enter your username",
              ),
              controller: usernameController,
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.blueAccent),
              onPressed: () {
                SharedPreferences.getInstance().then((prefs) {
                  String username = prefs.getString("username") ?? "";
                  String password = prefs.getString("password") ?? "";
                  print('username: $username, password: $password');
                  if (usernameController.text == username &&
                      passwordController.text == password) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login successful!")));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MainView();
                    }));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Invalid username or password")));
                  }
                });
              },
              child: const Text("Login"),
            ),
          ],
        ),
      )),
    );
  }
}
