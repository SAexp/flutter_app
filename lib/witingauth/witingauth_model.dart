import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'witingauth_widget.dart' show WitingauthWidget;
import 'package:flutter/material.dart';

class WitingauthModel extends FlutterFlowModel<WitingauthWidget> {
  ///  Local state fields for this page.

  StudentsRow? userIDDD;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in witingauth widget.
  List<StudentsRow>? studentquerry;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
