import 'package:flutter/material.dart';
import 'package:windows_counter_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Less Button

                  CustomIconButton(
                    onPressed: _decrementCounter,
                    icon: Icons.exposure_minus_1,
                    tooltipText: 'Less 1',
                  ),

                  // Reload Button

                  CustomIconButton(
                    onPressed: _reloadCounter,
                    icon: Icons.exposure_zero,
                    tooltipText: 'Reload to zero',
                  ),

                  // Add Button

                  CustomIconButton(
                    onPressed: _incrementCounter,
                    icon: Icons.exposure_plus_1,
                    tooltipText: 'Plus 1',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _reloadCounter() {
    setState(() {
      _counter = 0;
    });
  }

  _decrementCounter() {
    setState(() {
      if (_counter != 0) _counter--;
    });
  }
}
