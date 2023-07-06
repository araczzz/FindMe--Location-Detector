import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_info_model.dart';
export 'location_info_model.dart';

class LocationInfoWidget extends StatefulWidget {
  const LocationInfoWidget({
    Key? key,
    required this.location,
  }) : super(key: key);

  final DocumentReference? location;

  @override
  _LocationInfoWidgetState createState() => _LocationInfoWidgetState();
}

class _LocationInfoWidgetState extends State<LocationInfoWidget> {
  late LocationInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationInfoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(25.0, 50.0, 0.0, 0.0),
      child: StreamBuilder<MapRecord>(
        stream: MapRecord.getDocument(widget.location!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            );
          }
          final containerMapRecord = snapshot.data!;
          return Container(
            width: 250.0,
            height: 250.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  containerMapRecord.name,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                      ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
