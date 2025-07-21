import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'online_order_items_model.dart';
export 'online_order_items_model.dart';

class OnlineOrderItemsWidget extends StatefulWidget {
  const OnlineOrderItemsWidget({
    super.key,
    this.orderItemDoc,
  });

  final OrderItemsRecord? orderItemDoc;

  @override
  State<OnlineOrderItemsWidget> createState() => _OnlineOrderItemsWidgetState();
}

class _OnlineOrderItemsWidgetState extends State<OnlineOrderItemsWidget> {
  late OnlineOrderItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnlineOrderItemsModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.orderItemDoc!.productName,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.sen(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                ),
          ),
          Text(
            formatNumber(
              widget.orderItemDoc!.quantity,
              formatType: FormatType.decimal,
              decimalType: DecimalType.automatic,
            ),
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.sen(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                ),
          ),
        ],
      ),
    );
  }
}
