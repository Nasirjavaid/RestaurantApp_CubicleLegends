import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
              child: SpinKitDoubleBounce(
            color: Colors.redAccent,
            size: 50.0,
          ))

          //      CircularProgressIndicator(
          //   backgroundColor: Colors.purple,
          // ))),
          ));
}
