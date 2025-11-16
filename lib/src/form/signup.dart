import 'package:flutter/material.dart';

import '../bottom_nav_bar/bottom_nav_Bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let’s Get Started!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Create an account..",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 30),
              Text("Name", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 15),
              // 🔹 Phone Number Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your Name',
                  hintText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 30),
              Text("Phone Number", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 15),
              // 🔹 Phone Number Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your phone number',
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              Text("Password", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 15),
              // 🔹 Password Field
              TextField(
                obscureText: _isHidden,
                decoration: InputDecoration(
                  labelText: '***********',
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isHidden ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isHidden = !_isHidden;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // 🔹 Login Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarPage(),
                      ),
                    ); //BottomNavigaBarPage()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Center(child: Text("Or")),
              const SizedBox(height: 20),
              // 🔹 Google Sign in Button
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFAF5), // হালকা অফ-হোয়াইট কালার
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEuTxw_nicB4OJPdgpND3aKMLOzy4uHP3zSnuU11EjMwMQlqjzSF5kQL_bTfVz8zlspfo&usqp=CAU",
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Sign in with Google",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              // 🔹 Facebook Sign in Button
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFAF5), // হালকা অফ-হোয়াইট কালার
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDwRckJ9kkGqRPCVMwDXJXmqadDVFmh7CSOg&s",
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Sign in with facebook",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // 🔹 Register text
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Don’t have an account? ",
                    style: const TextStyle(color: Colors.black54),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: const TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
