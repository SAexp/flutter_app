import '/flutter_flow/flutter_flow_util.dart';
import 'sport_page_content_widget.dart' show SportPageContentWidget;
import 'package:flutter/material.dart';

class SportPageContentModel extends FlutterFlowModel<SportPageContentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
