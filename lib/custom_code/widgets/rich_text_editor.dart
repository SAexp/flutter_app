// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class RichTextEditor extends StatefulWidget {
  const RichTextEditor({
    super.key,
    this.width,
    this.height,
    this.darkMode,
    this.spellCheck,
    this.dropdownBackgroundColor,
    this.dropdownButtonColor,
    this.dropdownTextColor,
    this.editorBackgroundColor,
    this.editorTextColor,
    this.hint,
  });

  final double? width;
  final double? height;
  final bool? darkMode;
  final bool? spellCheck;
  final Color? dropdownBackgroundColor;
  final Color? dropdownButtonColor;
  final Color? dropdownTextColor;
  final Color? editorBackgroundColor;
  final Color? editorTextColor;
  final String? hint;

  @override
  State<RichTextEditor> createState() => _RichTextEditorState();
}

class _RichTextEditorState extends State<RichTextEditor> {
  late HtmlEditorController controller;

  @override
  void initState() {
    super.initState();
    controller = HtmlEditorController(
      processNewLineAsBr: true,
    );
    setDefaultContent();
  }

  void setDefaultContent() {
    // Set your default HTML content here
    String defaultContent = FFAppState().HTMLMessage;
    controller.setText(defaultContent); // Corrected controller reference
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          HtmlEditor(
            controller: controller,
            htmlEditorOptions: HtmlEditorOptions(
              hint: widget.hint ?? "Type here...",
              initialText: FFAppState().HTMLMessage,
              darkMode: widget.darkMode ?? true,
              spellCheck: widget.spellCheck ?? true,
            ),
            callbacks: Callbacks(onChangeContent: (String? htmlContent) {
              FFAppState().HTMLMessage = htmlContent ?? '';
            }, onInit: () {
              // controller.evaluateJavascriptWeb('setThemeStyle');
            }),
            htmlToolbarOptions: HtmlToolbarOptions(
              textStyle: TextStyle(
                fontSize: 12,
                color: widget.dropdownTextColor ?? Colors.black,
              ),
              dropdownBackgroundColor:
                  widget.dropdownBackgroundColor ?? Colors.white,
              buttonColor: widget.dropdownButtonColor ?? Colors.black,
              gridViewHorizontalSpacing: 3,
              toolbarType: ToolbarType.nativeGrid,
              gridViewVerticalSpacing: 2,
              toolbarPosition: ToolbarPosition.aboveEditor,
              renderSeparatorWidget: false,
            ),
            otherOptions: OtherOptions(
              height: 400.0,
            ),
          ),
        ],
      ),
    );
  }
}
