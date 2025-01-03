import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppIcons.dart';
import 'package:my_app/Configuration/AppRoutese.dart';
import 'package:my_app/Configuration/AppString.dart';
import 'package:my_app/Pages/Home_page.dart';
import 'package:my_app/main.dart';
import 'package:http/http.dart' as http;

  const baseurl = 'http://localhost:8080/';
void main() {
  runApp(const MyApp());
}

class Login_page extends StatelessWidget {
  final loginRoute = '$baseurl/login';
  var username = '';
  var password = '';
  
   Login_page({super.key});
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white10,
      body:  SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    AppStrings.helloWelcome,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(AppStrings.loginToContinue),
                  SizedBox(height: 50),
                  TextField(
                    onChanged: (value) {
                      username=value;
                    },
                      decoration: InputDecoration(
                          hintText: 'Username',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: Colors.purple.withOpacity(0.1),
                          prefixIcon: Icon(Icons.person))),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Colors.purple.withOpacity(0.1),
                        prefixIcon: Icon(Icons.password)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          print("Clicked");
                        },
                        child: Text(
                          AppStrings.forgotPassword,
                          style: TextStyle(color: Colors.purple),
                        )),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    child: ElevatedButton(
                        onPressed: () {
                          // doligon();
                          Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.purple,
                          minimumSize: Size(200, 60),
                          fixedSize: Size(200, 50),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                  Spacer(),
                  Text('Or Sign Up using '),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        print('Login with google');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        minimumSize: Size(200, 60),
                        fixedSize: Size(350, 50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.Google,
                            height: 25,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Sign Up with Google', style: TextStyle(fontSize: 15))
                        ],
                      )),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        print('Login with FB');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        minimumSize: Size(200, 60),
                        fixedSize: Size(350, 50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.Facebook,
                            height: 25,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Sign Up with Facebook', style: TextStyle(fontSize: 15))
                        ],
                      )),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(AppRoutes.Signup);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(decoration: TextDecoration.underline),
                          ))
                    ],
                  )
                ],
              ),
            ),
        ),
      ),
      ),
    );
  }

//   Future<String> doligon() async{
//     final body = {
//     'username' : username,
//     'password' : password,
//   };

//     final response = await http.post(Uri.parse(loginRoute),body: jsonEncode(body));
//     if(response.statusCode == 200){
//       print(response.body);
//       return response.body;
//     }else
//     print('You have an Eroor!');
//     throw Exception(Error);
//   }
}
