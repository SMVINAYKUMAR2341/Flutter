import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LoginScreen()));

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginScreen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(labelText: "email")),
            TextField(decoration: InputDecoration(labelText: "password")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Login Successful")));
              },
              child: Text("login"),
            ),
          ],
        ),
      ),
    );
  }
}
