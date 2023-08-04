import 'package:flutter/material.dart';

class MobileNumberPage extends StatefulWidget {
  const MobileNumberPage({Key? key}) : super(key: key);

  @override
  MobileNumberPageState createState() => MobileNumberPageState();
}

class MobileNumberPageState extends State<MobileNumberPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Mobile Number'),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your mobile number',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: MediaQuery.of(context).size.height * 0.45,
            child: FloatingActionButton(
              backgroundColor: Colors.purple,
              child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onPressed: () {
                // Add route here
              },
            ),
          ),
        ],
      ),
    );
  }
}
