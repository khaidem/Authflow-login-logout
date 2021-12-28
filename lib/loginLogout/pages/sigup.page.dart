import 'package:flutter/material.dart';

class SigupPage extends StatefulWidget {
  const SigupPage({Key? key}) : super(key: key);

  @override
  State<SigupPage> createState() => _SigupPageState();
}

class _SigupPageState extends State<SigupPage> {
  final _formKey = GlobalKey<FormState>();

  final _userEmail = '';
  final _userName = '';
  final _userPassword = '';
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),
              const Text(
                "Hello Friend",
                style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
              ),
              const Text(
                "Welcomed !",
                style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                key: const ValueKey('userName'),
                validator: (value) {
                  if (value!.isEmpty || value.length < 4) {
                    return "please enter at least 4 characters";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Enter Your Name",
                ),
                onSaved: (value) {
                  _userName;
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                key: const ValueKey('password'),
                validator: (value) {
                  if (value!.isEmpty || value.length < 7) {
                    return "password must be at least 7 character long";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: " Password",
                ),
                onSaved: (value) {
                  _userPassword;
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                key: const ValueKey('email'),
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return "Please Enter a valid Email address.";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter your Email",
                ),
                onSaved: (value) {
                  _userEmail;
                },
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Log in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
