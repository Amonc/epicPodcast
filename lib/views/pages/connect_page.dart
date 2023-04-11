import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Epic Podcast"),
      ),
      body: Center(
        child: SelectionArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Selectable text'),
              SelectionContainer.disabled(child: Text('Non-selectable text')),
              Text('Selectable text'),
            ],
          ),
        ),
      ),
    );
  }
}
