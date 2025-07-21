import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'warehouse_list_item_selectable_model.dart';
export 'warehouse_list_item_selectable_model.dart';

class WarehouseListItemSelectableWidget extends StatefulWidget {
  const WarehouseListItemSelectableWidget({super.key});

  @override
  State<WarehouseListItemSelectableWidget> createState() =>
      _WarehouseListItemSelectableWidgetState();
}

class _WarehouseListItemSelectableWidgetState
    extends State<WarehouseListItemSelectableWidget> {
  late WarehouseListItemSelectableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarehouseListItemSelectableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: Container(
        width: 700.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).lineColor,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: SwitchListTile(
                    value: _model.switchListTileValue ??= false,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchListTileValue = newValue);
                    },
                    title: Text(
                      'Title',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.sen(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    activeColor: FlutterFlowTheme.of(context).primaryBtnText,
                    activeTrackColor: FlutterFlowTheme.of(context).cardBG4,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
