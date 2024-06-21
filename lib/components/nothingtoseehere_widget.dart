import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'nothingtoseehere_model.dart';
export 'nothingtoseehere_model.dart';

class NothingtoseehereWidget extends StatefulWidget {
  const NothingtoseehereWidget({super.key});

  @override
  State<NothingtoseehereWidget> createState() => _NothingtoseehereWidgetState();
}

class _NothingtoseehereWidgetState extends State<NothingtoseehereWidget> {
  late NothingtoseehereModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NothingtoseehereModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_aZTdD5.json',
              width: 150.0,
              height: 130.0,
              fit: BoxFit.cover,
              frameRate: FrameRate(1.0),
              repeat: false,
              animate: true,
            ),
            Text(
              'No data available for the moment',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
