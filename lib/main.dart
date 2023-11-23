import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white

          ),
        ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void handleContainerTap(String containerName) {
    // Handle the tap on the app bar title
    print('$containerName Container Tapped!');
    // Add your desired action here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            child:
            Text('Name and Price Buttons');
          },
    ),

      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(30),
            height: 750,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(name: 'Price range', price: '\$100-\$400', onTap:() => ('Price range'),),
                SizedBox(width: 15,height: 30,),
                Padding(padding: EdgeInsets.fromLTRB(20, 100, 20, 100)),
                Button(name: 'Hairstylish', price: '[\$10.99]', onTap: () => ('Hairstylish'),),
                SizedBox(height: 15.0),
                Button(name: 'Haircut and Haircolouring', price: '[\$15.99]', onTap:() =>('Haircut and Haircolouring'),),
                SizedBox(height: 15.0),
                Button(name: 'Tanning', price: '[\$19.99]', onTap: () => ('Tanning'),),
                SizedBox(height: 15.0),
                Button(name: 'Pedicure and Manicure', price: '[\$24.99]', onTap:() => ('Pedicure and Manicure'),),
                SizedBox(height: 15.0),
                Button(name: 'Facial and skin care treatment', price: '[\$29.99]', onTap:() => ('Facial and skin care treatment'),),
              ],
            ),
          ),
        ),

    );
  }
}

class Button extends StatelessWidget {
  final String name;
  final String price;
       VoidCallback  onTap;

  Button({required this.name, required this.price,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child:Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    );
  }
}