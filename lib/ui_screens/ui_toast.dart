import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class UiToast extends StatefulWidget {
  const UiToast({Key? key}) : super(key: key);

  @override
  State<UiToast> createState() => _UiToastState();
}

class _UiToastState extends State<UiToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showToast('This is normal toast with animation',
                      context: context,
                      animation: StyledToastAnimation.scale,
                      reverseAnimation: StyledToastAnimation  .fade,
                      // position: StyledToastPosition.center,
                      position: const StyledToastPosition(align: Alignment.bottomCenter, offset: 100.0),
                      animDuration: const Duration(seconds: 1),
                      duration: const Duration(seconds: 4),
                      curve: Curves.elasticOut,
                      reverseCurve: Curves.linear,
                    );
                  },
                  child: const Text('Show Toast', style: TextStyle(fontSize: 26),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
