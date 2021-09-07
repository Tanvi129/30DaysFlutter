import 'package:flutter/material.dart';
import 'package:flutter_app_first/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      
      setState(() {
      changeButton = true;

    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);

    }
    
    
    
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginImage.png",
                fit: BoxFit.fill,
                height: 400,
                width: 300,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                          if (value?.isEmpty?? true) {
                            return "Username cannot be empty";
                          }

                          return null;
                        },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }else if(value.length < 6 ){
                            return "Password cannot be less than 6 characters";
                          }

                          return null;
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                child: InkWell(
                  //splashColor: Colors.red,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                    decoration: BoxDecoration(
                      shape:
                          changeButton ? BoxShape.circle : BoxShape.rectangle,
                      //borderRadius: changeButton? BorderRadius.circular(50) : BorderRadius.circular(4),
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
    ));
  }
}
