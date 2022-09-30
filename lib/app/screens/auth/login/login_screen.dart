import 'package:flutter/material.dart';
import 'package:whitelabel_app/core/environment/environment.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Login"),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("email"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Password"),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Environment.envAllowSignUp
                        ? TextButton(
                            onPressed: () {},
                            child: const Text(
                                "Pas encore de compte? créer un nouveau"))
                        : Container()
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
