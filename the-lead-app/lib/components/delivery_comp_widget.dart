import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delivery_comp_model.dart';
export 'delivery_comp_model.dart';

class DeliveryCompWidget extends StatefulWidget {
  const DeliveryCompWidget({
    super.key,
    required this.deliveryDocParam,
  });

  final DeliveriesRecord? deliveryDocParam;

  @override
  State<DeliveryCompWidget> createState() => _DeliveryCompWidgetState();
}

class _DeliveryCompWidgetState extends State<DeliveryCompWidget> {
  late DeliveryCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DELIVERY_deliveryComp_ON_INIT_STATE');
      // DeliveryItemsDocsQuery
      logFirebaseEvent('deliveryComp_DeliveryItemsDocsQuery');
      _model.deliveryItemsDocsListQuery = await queryDeliveryItemsRecordOnce(
        queryBuilder: (deliveryItemsRecord) => deliveryItemsRecord
            .where(
              'deliveryRef',
              isEqualTo: widget.deliveryDocParam?.reference,
            )
            .where(
              'isDelivered',
              isEqualTo: false,
            ),
      );
      while (_model.loopCounter < _model.deliveryItemsDocsListQuery!.length) {
        logFirebaseEvent('deliveryComp_firestore_query');
        _model.volProductDocQuery =
            await queryVolunteerAssignedProductsRecordOnce(
          queryBuilder: (volunteerAssignedProductsRecord) =>
              volunteerAssignedProductsRecord
                  .where(
                    'productPortalId',
                    isEqualTo: _model.deliveryItemsDocsListQuery
                        ?.elementAtOrNull(_model.loopCounter)
                        ?.productPortalId,
                  )
                  .where(
                    'volunteerRef',
                    isEqualTo: currentUserReference,
                  ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        if (_model.volProductDocQuery!.totalStock >=
            _model.deliveryItemsDocsListQuery!
                .elementAtOrNull(_model.loopCounter)!
                .quantity) {
          logFirebaseEvent('deliveryComp_update_component_state');
          _model.loopCounter = _model.loopCounter + 1;
          safeSetState(() {});
        } else {
          logFirebaseEvent('deliveryComp_update_component_state');
          _model.noOfProductsRequireStock = _model.noOfProductsRequireStock + 1;
          safeSetState(() {});
          logFirebaseEvent('deliveryComp_update_component_state');
          _model.loopCounter = _model.loopCounter + 1;
          safeSetState(() {});
        }
      }
    });

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Container(
        width: 700.0,
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
            color: widget.deliveryDocParam?.isDelivered == true
                ? FlutterFlowTheme.of(context).success
                : FlutterFlowTheme.of(context).primary,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        '#${valueOrDefault<String>(
                          widget.deliveryDocParam?.orderNumber,
                          '#',
                        )}',
                        '#',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        dateTimeFormat(
                          "d/M/y",
                          widget.deliveryDocParam?.createdDate,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        '-',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: widget.deliveryDocParam?.isDelivered == true
                    ? FlutterFlowTheme.of(context).success
                    : FlutterFlowTheme.of(context).primary,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          '${valueOrDefault<String>(
                            widget.deliveryDocParam?.deliveryFirstName,
                            '-',
                          )} ${valueOrDefault<String>(
                            widget.deliveryDocParam?.deliverySurname,
                            '-',
                          )}',
                          '-',
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          '${widget.deliveryDocParam?.deliveryAddress1} ${widget.deliveryDocParam?.deliveryAddress2}',
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.deliveryDocParam?.deliveryPostcode,
                        '-',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: widget.deliveryDocParam?.isDelivered == true
                            ? FlutterFlowTheme.of(context).success
                            : FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                functions.getDeliveryStatus(
                                    widget.deliveryDocParam!),
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.deliveryDocParam?.isDelivered == true)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          'Delivered on ${valueOrDefault<String>(
                            dateTimeFormat(
                              "d/M h:mm a",
                              widget.deliveryDocParam?.deliveredDate,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            '-',
                          )}',
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).success,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.deliveryDocParam?.orderNotes != null &&
                        widget.deliveryDocParam?.orderNotes != '')
                      AlignedTooltip(
                        content: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'This order contains a delivery note.',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                          ),
                        ),
                        offset: 4.0,
                        preferredDirection: AxisDirection.up,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 100),
                        showDuration: Duration(milliseconds: 1500),
                        triggerMode: TooltipTriggerMode.tap,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.speaker_notes_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget.deliveryDocParam?.giftCardFromMessage != null &&
                        widget.deliveryDocParam?.giftCardFromMessage != '')
                      AlignedTooltip(
                        content: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'This order contains a Gift Card.',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                          ),
                        ),
                        offset: 4.0,
                        preferredDirection: AxisDirection.up,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 100),
                        showDuration: Duration(milliseconds: 1500),
                        triggerMode: TooltipTriggerMode.tap,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.card_giftcard_rounded,
                              color: FlutterFlowTheme.of(context).success,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget.deliveryDocParam?.orderNotes != null &&
                        widget.deliveryDocParam?.orderNotes != '')
                      AlignedTooltip(
                        content: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'This order contains delivery instructions.',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                          ),
                        ),
                        offset: 4.0,
                        preferredDirection: AxisDirection.down,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 100),
                        showDuration: Duration(milliseconds: 1500),
                        triggerMode: TooltipTriggerMode.tap,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.note_alt_outlined,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    if (widget.deliveryDocParam?.isPickUp == true)
                      AlignedTooltip(
                        content: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'This is a Pick-Up order.',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                          ),
                        ),
                        offset: 4.0,
                        preferredDirection: AxisDirection.down,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 100),
                        showDuration: Duration(milliseconds: 1500),
                        triggerMode: TooltipTriggerMode.tap,
                        child: Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.delivery_dining_outlined,
                            color: FlutterFlowTheme.of(context).error,
                            size: 28.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if ((_model.noOfProductsRequireStock > 0) &&
                  (widget.deliveryDocParam?.isDelivered == false))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).error,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Stock not enough.',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                          ),
                        ],
                      ),
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
