// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingCustomWidget extends StatefulWidget {
  const LoadingCustomWidget({
    Key? key,
    this.width,
    this.height,
    this.size,
    this.color,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? size;
  final Color? color;

  @override
  _LoadingCustomWidgetState createState() => _LoadingCustomWidgetState();
}

class _LoadingCustomWidgetState extends State<LoadingCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      color: Colors.transparent,
      child: LoadingAnimationWidget.inkDrop(
        color: widget.color ?? Colors.blue,
        size: widget.size ?? 100,
      ),
    );
  }
}
