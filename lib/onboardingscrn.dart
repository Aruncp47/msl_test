import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msl_test/loginpg.dart';

class Onbrdscrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/onbrdimg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Find Your dream vacation with my Holiday.\n   Travel the worl easily safely an quickly \n          without fear of rising ticket price",
            style: TextStyle(
                color: Colors.black87,
                letterSpacing: 1,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => loginpg()));},
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange),
                  child: Center(
                    child: Text("Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold)),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
