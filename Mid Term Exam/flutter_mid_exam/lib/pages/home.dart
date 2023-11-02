import 'package:flutter/material.dart';
import 'package:flutter_mid_exam/pages/contacts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLogin(),
    );
  }

  _buildLogin() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Username',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forget Password?',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              _openPageAbout(context: context);
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}

void _openPageAbout(
    {required BuildContext context, bool fullscreenDialog = false}) {
  Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => const ContactPage()));
}
