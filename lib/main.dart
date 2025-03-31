import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'WHC demo';
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
                        child: Image.network(
                            'https://img.freepik.com/free-vector/stylish-welcome-lettering-banner-join-with-joy-happiness_1017-57675.jpg'),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.network(
                        'https://images.crunchbase.com/image/upload/c_pad,f_auto,q_auto:eco,dpr_1/v1410170762/q25og3mfngq4tp7ofusm.jpg'),
                    title: Text("Is abortion bad?"),
                    subtitle: Text('What is wrong with abortion?'),
                    trailing: ElevatedButton(
                        onPressed: () {
                          print("button clicked");
                        },
                        child: Text('Read more')),
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
