import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'batch_delivery_comp_model.dart';
export 'batch_delivery_comp_model.dart';

class BatchDeliveryCompWidget extends StatefulWidget {
  const BatchDeliveryCompWidget({
    super.key,
    required this.deliveryDocParam,
    required this.batchDocParam,
  });

  final DeliveriesRecord? deliveryDocParam;
  final BatchesRecord? batchDocParam;

  @override
  State<BatchDeliveryCompWidget> createState() =>
      _BatchDeliveryCompWidgetState();
}

class _BatchDeliveryCompWidgetState extends State<BatchDeliveryCompWidget>
    with TickerProviderStateMixin {
  late BatchDeliveryCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatchDeliveryCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('BATCH_DELIVERY_batchDeliveryComp_ON_INIT');
      // queryDeliveryItems
      logFirebaseEvent('batchDeliveryComp_queryDeliveryItems');
      _model.deliveryItemsQuery = await queryDeliveryItemsRecordOnce(
        queryBuilder: (deliveryItemsRecord) => deliveryItemsRecord
            .where(
              'isDelivered',
              isEqualTo: false,
            )
            .where(
              'deliveryRef',
              isEqualTo: widget.deliveryDocParam?.reference,
            ),
      );
      while (_model.loopCounter < _model.deliveryItemsQuery!.length) {
        // queryVolProducts
        logFirebaseEvent('batchDeliveryComp_queryVolProducts');
        _model.volProdQuery = await queryVolunteerAssignedProductsRecordOnce(
          queryBuilder: (volunteerAssignedProductsRecord) =>
              volunteerAssignedProductsRecord
                  .where(
                    'productPortalId',
                    isEqualTo: _model.deliveryItemsQuery
                        ?.elementAtOrNull(_model.loopCounter)
                        ?.productPortalId,
                  )
                  .where(
                    'volunteerRef',
                    isEqualTo: widget.deliveryDocParam?.volunteerRef,
                  ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        if (_model.volProdQuery!.onlineStock >=
            _model.deliveryItemsQuery!
                .elementAtOrNull(_model.loopCounter)!
                .quantity) {
          logFirebaseEvent('batchDeliveryComp_update_component_state');
          _model.loopCounter = _model.loopCounter + 1;
          safeSetState(() {});
        } else {
          logFirebaseEvent('batchDeliveryComp_update_component_state');
          _model.noOfProductRequired = _model.noOfProductRequired + 1;
          safeSetState(() {});
          logFirebaseEvent('batchDeliveryComp_update_component_state');
          _model.loopCounter = _model.loopCounter + 1;
          safeSetState(() {});
        }
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
                : FlutterFlowTheme.of(context).placeholders,
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
                      '#${widget.deliveryDocParam?.orderNumber}',
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
                      dateTimeFormat(
                        "d/M/y",
                        widget.deliveryDocParam!.orderDate!,
                        locale: FFLocalizations.of(context).languageCode,
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
              if ((_model.noOfProductRequired > 0) &&
                  (widget.deliveryDocParam?.isDelivered == false))
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).error,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: Icon(
                          Icons.warning_amber_rounded,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 24.0,
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Stock Not Enough !',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
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
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              Divider(
                thickness: 1.0,
                color: widget.deliveryDocParam?.isDelivered == true
                    ? FlutterFlowTheme.of(context).success
                    : FlutterFlowTheme.of(context).placeholders,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        '${widget.deliveryDocParam?.deliveryFirstName} ${widget.deliveryDocParam?.deliverySurname}',
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
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
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
                              functions
                                  .getDeliveryStatus(widget.deliveryDocParam!),
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
              if (widget.deliveryDocParam?.isDelivered == false)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).placeholders,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'BATCH_DELIVERY_REVERSE_DELIVERY_BTN_ON_T');
                              var _shouldSetState = false;
                              final firestoreBatch =
                                  FirebaseFirestore.instance.batch();
                              try {
                                logFirebaseEvent('Button_alert_dialog');
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Reverse delivery?'),
                                              content: Text(
                                                  'You will be able to assign this order to another volunteer.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('Confirm'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  // deleteDeliveryDoc
                                  logFirebaseEvent('Button_deleteDeliveryDoc');
                                  firestoreBatch.delete(
                                      widget.deliveryDocParam!.reference);
                                  // queryOrderDoc
                                  logFirebaseEvent('Button_queryOrderDoc');
                                  _model.onlineOrderQuery =
                                      await queryOrdersRecordOnce(
                                    queryBuilder: (ordersRecord) =>
                                        ordersRecord.where(
                                      'orderNumber',
                                      isEqualTo:
                                          widget.deliveryDocParam?.orderNumber,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  _shouldSetState = true;
                                  // updateBatch
                                  logFirebaseEvent('Button_updateBatch');

                                  firestoreBatch.update(
                                      widget.batchDocParam!.reference, {
                                    ...mapToFirestore(
                                      {
                                        'deliveryReferences':
                                            FieldValue.arrayRemove([
                                          widget.deliveryDocParam?.reference
                                        ]),
                                        'deliveryIds': FieldValue.arrayRemove([
                                          widget.deliveryDocParam?.reference.id
                                        ]),
                                      },
                                    ),
                                  });
                                  // updateOrderStatus
                                  logFirebaseEvent('Button_updateOrderStatus');

                                  firestoreBatch.update(
                                      _model.onlineOrderQuery!.reference,
                                      createOrdersRecordData(
                                        orderStatus: 'processing',
                                      ));
                                  // queryDeliveryItems
                                  logFirebaseEvent('Button_queryDeliveryItems');
                                  _model.deliveruItemsDocQuery =
                                      await queryDeliveryItemsRecordOnce(
                                    queryBuilder: (deliveryItemsRecord) =>
                                        deliveryItemsRecord.where(
                                      'deliveryRef',
                                      isEqualTo:
                                          widget.deliveryDocParam?.reference,
                                    ),
                                  );
                                  _shouldSetState = true;
                                  while (_model.reverseLoopCounter <
                                      _model.deliveruItemsDocQuery!.length) {
                                    logFirebaseEvent('Button_backend_call');
                                    firestoreBatch.delete(_model
                                        .deliveruItemsDocQuery!
                                        .elementAtOrNull(
                                            _model.reverseLoopCounter)!
                                        .reference);
                                    logFirebaseEvent(
                                        'Button_update_component_state');
                                    _model.reverseLoopCounter =
                                        _model.reverseLoopCounter + 1;
                                    safeSetState(() {});
                                  }
                                  logFirebaseEvent(
                                      'Button_trigger_push_notification');
                                  triggerPushNotification(
                                    notificationTitle: 'Delivery withdraw',
                                    notificationText:
                                        'The lead of your warehouse has withdrawn the delivery for order no ${widget.deliveryDocParam?.orderNumber}',
                                    notificationSound: 'default',
                                    userRefs: [
                                      widget.deliveryDocParam!.volunteerRef!
                                    ],
                                    initialPageName: 'bootstrapPage',
                                    parameterData: {},
                                  );
                                } else {
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } finally {
                                await firestoreBatch.commit();
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                            text: 'Reverse Delivery',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).info,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
