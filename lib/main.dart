import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void helloWorld(String name) {
    print("hello! $name");
  }

  int addFunction(int a, int b) {
    return a + b;
  }

  // app builder.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/jouwimage.jpg'),
              ),
              const Text(
                'Random Loesje',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans 3',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Card(
                margin: EdgeInsets.all(20),
                child: ListTile(
                  leading: Icon(Icons.fingerprint, color: Colors.teal),
                  title: Text(
                    "John doe",
                    style: TextStyle(
                        fontFamily: 'Source Sans 3',
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ),
              ),
              const Card(
                margin: EdgeInsets.all(20),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "student@mboutrecht.nl",
                    style: TextStyle(
                        fontFamily: "Source Sans 3",
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  helloWorld("johan");
                },
                child: const Text("Print name"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(addFunction(10, 12));
                },
                child: const Text("10 + 12"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
