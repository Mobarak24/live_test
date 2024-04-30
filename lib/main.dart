import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(
                    'https://picsum.photos/seed/picsum/200/300',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Mobarak Hossain',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'mobarak2@gmai.com',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hi there , I am Mobarak Hossain . I am 24. I am from Bnagladesh in chattagram'
                'I completed diploma in enginerring from computer scince , now i stay in dhaka '
                'I want to be a software engineer . now i am learning Mobaile app developement from'
                'ostad skill learning flatform.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
