
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DarkAndWhiteMode extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> darkState = useState(false);
    return Scaffold(
      backgroundColor: darkState.value ? Colors.grey[850] : Colors.grey[300],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Icon(
              Icons.android,
              size: 80,
              color: darkState.value ? Colors.white : null,
            ),
            decoration: BoxDecoration(
                color: darkState.value ? Colors.grey[850] : Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color:
                          darkState.value ? Colors.grey[900] : Colors.grey[400],
                      offset: Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: darkState.value ? Colors.grey[800] : Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1.0),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {
                    darkState.value = true;
                  },
                  child: Text(
                    'Dark',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.black,
                ),
                FlatButton(
                  onPressed: () {
                    darkState.value = false;
                  },
                  child: Text('White'),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
