import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InnerShadow extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> useInnerShadow = useState(false);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 50),
              child: Container(
                height: 200,
                width: 200,
                child: Icon(Icons.android, size: 60, color: Colors.grey[800]),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600],
                          offset: Offset(4, 4),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                    ],
                    gradient: useInnerShadow.value
                        ? LinearGradient(
                            colors: [
                                Colors.grey[200],
                                Colors.grey[300],
                                Colors.grey[400],
                                Colors.grey[500],
                              ],
                            stops: [
                                0.1,
                                0.3,
                                0.8,
                                0.9
                              ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)
                        : null),
              ),
            ),
            FlatButton(
              onPressed: () {
                useInnerShadow.value = !useInnerShadow.value;
              },
              child: Text("Use Inner Shadow"),
              color: Colors.grey[300],
            )
          ],
        ),
      ),
    );
  }
}
