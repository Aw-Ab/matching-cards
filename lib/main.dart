// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('تطابق الصور '),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int LIN = 1;
  int RIN = 2;
  void ChangeImage() {
    LIN = Random().nextInt(8) + 1;
    RIN = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          LIN == RIN ? 'مبروك لقد نجحت' : 'حاول مرة اخرى',
          style: TextStyle(
            fontSize: 44.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        ChangeImage();
                      });
                    },
                    child: Image.asset('assets/images/image-$LIN.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        ChangeImage();
                      });
                    },
                    child: Image.asset('assets/images/image-$RIN.png')),
              )
            ],
          ),
        ),
      ],
    );
  }
}
