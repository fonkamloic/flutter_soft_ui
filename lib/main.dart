import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:soft_ui/dark_and_white_mode_toogle.dart';
import 'package:soft_ui/inner_shadow.dart';
import 'package:soft_ui/widget/soft_button.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final icon1Pressed = useState(false);
    final icon2Pressed = useState(false);
    final icon3Pressed = useState(false);
    final icon4Pressed = useState(false);
    bool switchOn() {
      icon1Pressed.value = false;
      icon2Pressed.value = false;
      icon3Pressed.value = false;
      icon4Pressed.value = false;
      return true;
    }

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    child: SoftButton(
                        icon: Icons.home, isPressed: icon1Pressed.value),
                    onTap: () {
                      
                      icon1Pressed.value = switchOn();
                    },
                  )),
                  Expanded(
                      child: GestureDetector(
                    child: SoftButton(
                        icon: Icons.settings, isPressed: icon2Pressed.value),
                    onTap: () => icon2Pressed.value = switchOn(),
                  )),
                  Expanded(
                      child: GestureDetector(
                    child: SoftButton(
                        icon: Icons.library_music,
                        isPressed: icon3Pressed.value),
                    onTap: () =>  icon3Pressed.value = switchOn(),
                  )),
                  Expanded(
                      child: GestureDetector(
                    child: SoftButton(
                        icon: Icons.favorite, isPressed: icon4Pressed.value),
                    onTap: () =>  icon4Pressed.value = switchOn(),
                  )),
                ],
              ))
        ],
      )),
    );
  }
}
