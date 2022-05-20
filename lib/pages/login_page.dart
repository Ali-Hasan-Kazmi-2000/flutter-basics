import 'dart:async';
import 'package:e_commerce_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  MoveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed((context), MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage("assets/images/hey.png",),
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20,),
              Text("Welcome $name", style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Username",
                        labelText: "Enter username",
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "User name is required";
                        }
                        else{
                          return null;
                        }
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        labelText: "Enter password",
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password is required";
                        }
                        else if(value.length < 6){
                          return "Password must be at least 6 characters";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 40,),


                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ? 50.0 : 8.0),
                      child: InkWell(
                        onTap: () => MoveToHome(context),
                        child: AnimatedContainer(duration: const Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton ? const Icon(Icons.done, color: Colors.white, size: 35,) : const Text('Login', style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
