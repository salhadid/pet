import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Circular Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Pet Home Page'),
    );
  }
}

// S
class MyHomePage extends StatelessWidget {
  final String title;
  final List<String> buttonLabels = [
    'REPORT',
    'MAP',
    'DONATE',
    'FIND',
    'INFO',
    'SHELTERS & RESCUE',
  ];

  final List<IconData> buttonIcons = [
    Icons.report,
    Icons.map,
    Icons.add_circle_outline_outlined,
    Icons.search,
    Icons.info,
    Icons.home,
  ];

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        children: List.generate(2, (col) {
          return Expanded(
            child: Column(
              children: List.generate(3, (row) {
                int index = col * 3 + row;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Button $index pressed');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.purple,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Icon(
                                    buttonIcons[index],
                                    color: Colors.purple,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            buttonLabels[index],
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
        }),
      ),
    );
  }
}
