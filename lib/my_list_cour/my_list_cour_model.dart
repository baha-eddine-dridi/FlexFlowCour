import '/flutter_flow/flutter_flow_util.dart';
import 'my_list_cour_widget.dart' show MyListCourWidget;
import 'package:flutter/material.dart';

class MyListCourModel extends FlutterFlowModel<MyListCourWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
