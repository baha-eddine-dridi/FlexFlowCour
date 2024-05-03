import '/flutter_flow/flutter_flow_util.dart';
import 'favourite_cour_widget.dart' show FavouriteCourWidget;
import 'package:flutter/material.dart';

class FavouriteCourModel extends FlutterFlowModel<FavouriteCourWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
