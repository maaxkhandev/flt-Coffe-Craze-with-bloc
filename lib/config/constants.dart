import 'package:flutter/material.dart';

class Constants {
  // Sizes and Spacings
  static const double defaultSpacingH = 20.0;
  static const double defaultSpacingV = 20.0;
  static const double defaultSpacing = 20.0;
  static const double bordersSize = 1;

  static Widget vSpace([double size = 1]) {
    return SizedBox(
      height: Constants.defaultSpacingV * size,
    );
  }

  static Widget hSpace([double size = 1]) {
    return SizedBox(
      width: Constants.defaultSpacing * size,
    );
  }

  static String dummyString =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget justo ac dolor congue suscipit. Vivamus auctor facilisis libero, eget bibendum mi volutpat in. Fusce venenatis, metus vel efficitur varius, elit arcu sagittis lectus, eget placerat libero felis id augue. Sed non purus eu quam facilisis euismod. Integer sit amet justo quis odio faucibus scelerisque. Sed ullamcorper, augue vel cursus ultrices, eros velit pellentesque arcu, eget lacinia est elit vel justo. Suspendisse potenti. Sed vel felis eget ex congue congue. Phasellus eu enim vitae nunc fermentum vulputate. Donec rhoncus, nunc nec cursus viverra, elit velit tincidunt justo, non vestibulum libero orci quis risus. Vivamus at nulla id ligula feugiat congue nec id nunc. Curabitur hendrerit, arcu vel efficitur tincidunt, quam nisl convallis lectus, vel convallis ligula justo a dolor. Sed vulputate risus sit amet arcu faucibus, sed fringilla elit interdum. Vivamus tincidunt a nulla eget laoreet.';
}
