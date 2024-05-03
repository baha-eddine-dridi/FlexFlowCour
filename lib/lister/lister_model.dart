import '/flutter_flow/flutter_flow_util.dart';
import 'lister_widget.dart' show ListerWidget;
import 'package:flutter/material.dart';

class ListerModel extends FlutterFlowModel<ListerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
