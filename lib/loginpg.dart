import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:http/http.dart';
import 'package:msl_test/signuppg.dart';

class loginpg extends StatefulWidget {
  const loginpg({Key? key}) : super(key: key);

  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email , password) async {

    try{

      Response response = await post(
          Uri.parse('https://152.69.167.64:3000/api/users/login'),
          body: {
            'email' : 'vichuvishnu@yopmail.l.com',
            'password' : '1234'
          }
      );

      if(response.statusCode == 200){

        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey[500],
                size: 25,
              ))),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(19, 8, 8, 8),
            child: Text(
              "Hello !",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 19.0,
              top: 4.0,
            ),
            child: Text(
              "sign in to continue",
              style: TextStyle(color: Colors.black87, letterSpacing: 1),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Text("Name", style: TextStyle()),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
            child: TextFormField(controller: emailController,
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.transparent)),
                  prefixIcon: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.deepOrange,
                  )),
            ),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 19.0),
            child: Text("Password", style: TextStyle()),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
            child: TextFormField(controller: passwordController,
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.transparent)),
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: Colors.deepOrange,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(color: Colors.deepOrange),
                  )),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: GestureDetector(onTap: () {
                login(emailController.text.toString(), passwordController.text.toString());
              },
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrange),
                      child: Center(
                        child: Text("Sign In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                    )),
              ),
            ),
          ),
          Center(
              child: Text("_______________   or sign in with ______________",
                  style: TextStyle(
                    color: Colors.black87,
                  ))),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterSocialButton(
                    buttonType: ButtonType.facebook,
                    onTap: () {},
                    mini: true,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.google,
                    mini: true,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.apple,
                    mini: true,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Text("Don't have account ?"),
                TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.deepOrange),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }


}
