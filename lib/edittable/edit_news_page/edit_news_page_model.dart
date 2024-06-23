import '/flutter_flow/flutter_flow_util.dart';
import '/web_applivehere/side_nav/side_nav_widget.dart';
import 'edit_news_page_widget.dart' show EditNewsPageWidget;
import 'package:flutter/material.dart';

class EditNewsPageModel extends FlutterFlowModel<EditNewsPageWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? newsImage;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
