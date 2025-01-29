// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/auth/auth_service.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

// ignore: unused_element
void _signup() async {
  final email = _usernameController.text;
  final password = _passwordController.text; 




  try{
    await Authservice().Signup(email, password);
  }
  catch(e){
    // ignore: avoid_print
    print(e);
  }
}
void _signin() async {
  final email = _usernameController.text;
  final password = _passwordController.text; 




  try{
    await Authservice().Signup(email, password);
  }
  catch(e){
    // ignore: avoid_print
    print(e);
  }
}






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 300,
            width: 375,
            color: Colors.grey[200],
            //padding: const EdgeInsets.all(20),
                        
                        child: Column(
            
            children: [
              SizedBox(height: 20),
              const Text("S I G N U P",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: "Username",
                   
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                   
                    borderSide: BorderSide.none
                  )
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                   
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                   
                    borderSide: BorderSide.none
                  )
                ),
              ),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                   
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                   
                    borderSide: BorderSide.none
                  )
                ),
              ),

              
            ],
          ),
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _signup,
        child: Icon(Icons.login),
      ),
    );
  }
}