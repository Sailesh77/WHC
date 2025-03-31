import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: FittedBox(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child:
                            Image.network('https://picsum.photos/250?image=9'),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.network('https://picsum.photos/250?image=9'),
                    title: Text("GREETING"),
                    subtitle: Text('Hello World'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      print("Tapped!");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
