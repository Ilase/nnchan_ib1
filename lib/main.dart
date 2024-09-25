import 'package:flutter/material.dart';

const colorBlack1 = Color.fromRGBO(15, 15, 15, 1);
const colorBlack2 = Color.fromRGBO(30, 30, 30, 1);
const colorWhite1 = Color.fromRGBO(255, 255, 255, 1);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(       
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '/~ NNChan',
            style: TextStyle(
              color: colorWhite1,
              fontSize: 10              
            ),
          ),
          toolbarHeight: 20,
          backgroundColor: colorBlack1
        ),
        backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column( //main 
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height:MediaQuery.of(context).size.height / 7,
                  child: const Row(
                    children: [
                      Expanded(
                        flex:2,
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '/~ NNChan',
                                style: TextStyle(
                                  color: colorWhite1,
                                  fontSize: 36,
                                ),
                              ),
                              Text(
                                'something wrong...',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: colorWhite1,
                                ),
                              )
                            ]
                          ),
                        ),
                      ),
                      // Expanded(
                      //   flex: 5,
                      //   child: null,
                      // )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}