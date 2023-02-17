
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:msl_test/loginpg.dart';



class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
              "Sign Up !",
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
              "Create a new account",
              style: TextStyle(color: Colors.black87, letterSpacing: 1),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Text("Email", style: TextStyle()),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 10, bottom: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.transparent)),
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.deepOrange,
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First name"),
                  Container(
                      height: 40,
                      width: 150,
                      child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey[300],
                              filled: true,
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)))))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("last name"),
                  Container(
                      height: 40,
                      width: 150,
                      child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey[300],
                              filled: true,
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)))))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: IntlPhoneField(
              decoration: InputDecoration(filled: true,isDense: true,fillColor: Colors.grey[300],
                labelText: 'Phone Number',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
              initialCountryCode: 'NP',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Text("Email", style: TextStyle()),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 10, bottom: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.transparent)),
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.deepOrange,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Text("Password", style: TextStyle()),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 10, bottom: 10),
            child: TextFormField(
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange),
                    child: Center(
                      child: Text("Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                    ),
                  )),
            ),
          ),
          Center(
              child: Text("_______________              ______________",
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
                Text("Already have a account ?"),
                TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => loginpg()));},
                    child: Text(
                      "Sign In",
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
