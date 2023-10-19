import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_counter_app/store/counter/counter.dart';


class CounterPage extends StatelessWidget{
  Counter counter = Counter();
  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobx Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Counter',style: TextStyle(fontSize: 26)),
            Observer( builder: (_) => Text('${counter.count}', style: TextStyle(fontSize: 42))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton.icon(onPressed: counter.increment, icon: Icon(Icons.add), label: Text("Add")),
                SizedBox(width: 20),
                ElevatedButton.icon(onPressed: counter.decrement, icon: Icon(Icons.remove), label: Text("Minus")),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: counter.resetCount,
        child: Icon(
          Icons.restore,
        ),
        tooltip: 'Reset',

      ),
    );
  }

}