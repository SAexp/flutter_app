import '/components/htmleditor_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/web_applivehere/side_nav/side_nav_widget.dart';
import 'create_news_widget.dart' show CreateNewsWidget;
import 'package:flutter/material.dart';

class CreateNewsModel extends FlutterFlowModel<CreateNewsWidget> {
  ///  Local state fields for this page.

  String imageUrl =
      'https://plwisydqyvslmicabqpi.supabase.co/storage/v1/object/public/public-bucket/images/empty.png?t=2024-06-23T10%3A33%3A56.045Z';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for HTMLEDITOR component.
  late HtmleditorModel htmleditorModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    htmleditorModel = createModel(context, () => HtmleditorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    htmleditorModel.dispose();
  }
}
