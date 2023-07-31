import 'package:flutter/material.dart';

enum TabItem {
  home,
  report,
  map,
  lostFound,
  account,
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TabItem _currentTab = TabItem.home;

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

  void _selectTab(int index) {
    setState(() {
      _currentTab = TabItem.values[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple.shade100,
              Colors.white,
            ],
          ),
        ),
        child: Row(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 120.0,
                            width: 120.0,
                            margin: const EdgeInsets.all(20.0),
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  buttonIcons[index],
                                  color: Colors.purple,
                                  size: 60,
                                ),
                              ),
                            ),
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
                  );
                }),
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Lost & Found',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _currentTab.index,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple,
        showUnselectedLabels: true,
        onTap: _selectTab,
      ),
    );
  }
}
