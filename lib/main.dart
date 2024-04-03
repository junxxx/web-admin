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
      color: Colors.green,
      child: const Column(
        children: [
          Text('Panel built with Column'),
          Text('Panel2 with Column'),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Row(
        children: [
          Text('This is header '),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.grey),
      child: const Row(
        children: [
          Text('This is Body'),
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
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Header()),
          Expanded(flex: 8, child: Body()),
        ],
      ),
    );
  }
}

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: const Row(
        children: [
          Expanded(
            flex: 2,
            child: Panel(),
          ),
          Expanded(
            flex: 8,
            child: WrapperContainer(),
          ),
        ],
      ),
    );
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
