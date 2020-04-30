import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: SizedBox.expand(
        child: Container(
          child: SpinKitRipple(
            color: Colors.white,
            size: 150.0,
          ),
          color: Colors.transparent,
        ),
      ),
    );
  }
}
