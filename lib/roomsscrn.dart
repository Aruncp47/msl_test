import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Roomscrn extends StatelessWidget {
  const Roomscrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Text("Find your trip", style: TextStyle(color: Colors.grey[500])),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[500],
              size: 25,
            ),
          )),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.transparent)),
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.deepOrange,size: 25,
                  )),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.sort,color: Colors.deepOrange,))
        ],
      ),
    );
  }
}
