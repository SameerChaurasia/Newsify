import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      onSaved: (value){
        emailController.text = value! ;
      },
      textInputAction: TextInputAction.next,
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,

      onSaved: (value){
        passwordController.text = value! ;
      },
      textInputAction: TextInputAction.done,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Form(
              key: _formKey,
              child: Column(
              children:<Widget>[
                emailField,
                passwordField,
              ],
            ),
              
            ),
          ) ,
        ),
      ),
    );
  }
}
