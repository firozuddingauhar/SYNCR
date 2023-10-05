import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'add_game_component_model.dart';
export 'add_game_component_model.dart';

class AddGameComponentWidget extends StatefulWidget {
  const AddGameComponentWidget({Key? key}) : super(key: key);

  @override
  _AddGameComponentWidgetState createState() => _AddGameComponentWidgetState();
}

class _AddGameComponentWidgetState extends State<AddGameComponentWidget> {
  late AddGameComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddGameComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('testPage');
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/league-of-legends-riot-games-logo-5.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'League of Legends',
              style: FlutterFlowTheme.of(context).titleSmall,
            ),
            Container(
              width: 200.0,
              child: LinearPercentIndicator(
                percent: 0.33,
                lineHeight: 20.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: FlutterFlowTheme.of(context).error,
                backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                center: Text(
                  '33%',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'GamerFont',
                        fontSize: 15.0,
                        useGoogleFonts: false,
                      ),
                ),
                barRadius: Radius.circular(15.0),
                padding: EdgeInsets.zero,
              ),
            ),
          ].divide(SizedBox(height: 5.0)),
        ),
      ],
    );
  }
}
