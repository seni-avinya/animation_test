import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOutCubicEmphasized,
          width: _big ? 300 : 100,
          height: _big ? 300 : 100,
          color: _big ? Colors.red : Colors.blue,
          child: FlutterLogo(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _big = !_big),
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
