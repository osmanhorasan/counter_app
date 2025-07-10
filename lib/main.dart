import 'package:counter_app/count_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterAppHomePage(),
    );
  }
}

class CounterAppHomePage extends StatelessWidget {
   CounterAppHomePage({super.key});

  final GlobalKey<CounterState> _counterStateKey = GlobalKey<CounterState>();

  @override
  Widget build(BuildContext context) {
    debugPrint("Build Çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Button click item count", style: TextStyle(fontSize: 16)),
            SizedBox(height: 18),
            Counter(key: _counterStateKey,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterStateKey.currentState!.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

