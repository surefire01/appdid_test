import 'package:appdid_test/providers/auth_provider.dart';
import 'package:appdid_test/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvder = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(hintText: "Username"),
                validator: (username) {
                  if (username == null || username.isEmpty) {
                    return "Enter Vaild Username";
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter vaild Password";
                  }
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        try {
                          final navigator = Navigator.of(context);
                          await authProvder.authService.login(
                              userNameController.text, passwordController.text);
                          navigator.popAndPushNamed(RouteNames.home);
                        } catch (e) {
                          print(e.toString());
                        }
                      }
                    },
                    child: const Text("Login")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
