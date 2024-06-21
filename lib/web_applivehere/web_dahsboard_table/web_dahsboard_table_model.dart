import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/web_applivehere/side_nav/side_nav_widget.dart';
import 'web_dahsboard_table_widget.dart' show WebDahsboardTableWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class WebDahsboardTableModel extends FlutterFlowModel<WebDahsboardTableWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<StudentsRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    expandableExpandableController1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableExpandableController2.dispose();
  }
}
