import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'htmleditor_model.dart';
export 'htmleditor_model.dart';

class HtmleditorWidget extends StatefulWidget {
  const HtmleditorWidget({super.key});

  @override
  State<HtmleditorWidget> createState() => _HtmleditorWidgetState();
}

class _HtmleditorWidgetState extends State<HtmleditorWidget> {
  late HtmleditorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HtmleditorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: custom_widgets.RichTextEditor(
                width: double.infinity,
                height: double.infinity,
                darkMode: false,
                spellCheck: false,
                dropdownBackgroundColor:
                    FlutterFlowTheme.of(context).primaryText,
                dropdownButtonColor: FlutterFlowTheme.of(context).primaryText,
                dropdownTextColor: FlutterFlowTheme.of(context).primaryText,
                editorBackgroundColor: FlutterFlowTheme.of(context).primaryText,
                editorTextColor: FlutterFlowTheme.of(context).primaryText,
                hint: 'You can write your email here',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
