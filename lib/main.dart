import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MainApp());
}

// left
class Panel extends StatelessWidget {
  const Panel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Column(
        children: [
          Text('Panel built with Column'),
          Text('Panel2 with Column'),
        ],
      ),
    );
  }
}

// right
class WrapperContainer extends StatelessWidget {
  const WrapperContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Text('Wrapper Container'),
      Text('data'),
    ]);
  }
}

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        flex: 2,
        child: Panel(),
      ),
      Expanded(
        flex: 8,
        child: WrapperContainer(),
      ),
    ]);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Admin(),
        ),
      ),
    );
  }
}
