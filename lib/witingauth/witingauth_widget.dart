import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'witingauth_model.dart';
export 'witingauth_model.dart';

class WitingauthWidget extends StatefulWidget {
  const WitingauthWidget({super.key});

  @override
  State<WitingauthWidget> createState() => _WitingauthWidgetState();
}

class _WitingauthWidgetState extends State<WitingauthWidget> {
  late WitingauthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WitingauthModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.studentquerry = await StudentsTable().queryRows(
        queryFn: (q) => q.eq(
          'student_id',
          currentUserUid,
        ),
      );
      _model.userIDDD = _model.studentquerry?.first;
      setState(() {});
      if (_model.userIDDD?.userRole == 6) {
        context.goNamed('School2');
      } else {
        if (isWeb) {
          context.goNamed('web_event_table');
        } else {
          context.goNamed('suggestionWebAdmin');
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Lottie.network(
              'https://assets2.lottiefiles.com/packages/lf20_aZTdD5.json',
              width: 150.0,
              height: 130.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
        ),
      ),
    );
  }
}
