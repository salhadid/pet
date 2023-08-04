import 'package:flutter/material.dart';

class CreateNew extends StatefulWidget {
  const CreateNew({Key? key}) : super(key: key);

  @override
  CreateNewState createState() => CreateNewState();
}

class CreateNewState extends State<CreateNew> {
  int _currentTab = 1;

  void _selectTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CREATE NEW'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {/* Handle lost pet */},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('REPORT LOST PET',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.error_outline_outlined,
                            color: Colors.white, size: 30.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {/* Handle found pet */},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('REPORT FOUND PET',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(Icons.notifications,
                          color: Colors.green, size: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
        currentIndex: _currentTab,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple,
        showUnselectedLabels: true,
        onTap: _selectTab,
      ),
    );
  }
}
