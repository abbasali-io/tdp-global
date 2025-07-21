import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'enter_postcode_comp_model.dart';
export 'enter_postcode_comp_model.dart';

class EnterPostcodeCompWidget extends StatefulWidget {
  const EnterPostcodeCompWidget({
    super.key,
    required this.whDocParam,
  });

  final WarehousesRecord? whDocParam;

  @override
  State<EnterPostcodeCompWidget> createState() =>
      _EnterPostcodeCompWidgetState();
}

class _EnterPostcodeCompWidgetState extends State<EnterPostcodeCompWidget> {
  late EnterPostcodeCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterPostcodeCompModel());

    _model.postcodeTxtTextController ??= TextEditingController();
    _model.postcodeTxtFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 6.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        -2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.0,
                            height: 3.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.close_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ENTER_POSTCODE_close_rounded_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_bottom_sheet');
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'Add Postcode',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Please let us know which postcode you want add in ',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
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
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget.whDocParam?.displayName,
                                  '-',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                              TextSpan(
                                text: ' warehouse',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.postcodeTxtTextController,
                          focusNode: _model.postcodeTxtFocusNode,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
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
                            hintText: 'Enter New Postcode',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent2,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).accent3,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 20.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
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
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.postcodeTxtTextControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            if (!isAndroid && !isiOS)
                              TextInputFormatter.withFunction(
                                  (oldValue, newValue) {
                                return TextEditingValue(
                                  selection: newValue.selection,
                                  text: newValue.text.toCapitalization(
                                      TextCapitalization.sentences),
                                );
                              }),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 44.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'ENTER_POSTCODE_ADD_POSTCODE_BTN_ON_TAP');
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
                                            title: Text('Add New Postcode?'),
                                            content: Text(
                                                'This add a new postcode to warehouse and it\'s all volunteers.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Yes Please'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                // getWhVols
                                logFirebaseEvent('Button_getWhVols');
                                _model.whVolDocs = await queryUsersRecordOnce(
                                  queryBuilder: (usersRecord) => usersRecord
                                      .where(
                                        'assignedWarehouseId',
                                        isEqualTo:
                                            widget.whDocParam?.reference.id,
                                      )
                                      .where(
                                        'userRole',
                                        isEqualTo: UserRole.volunteer.name,
                                      ),
                                );
                                _shouldSetState = true;
                                logFirebaseEvent('Button_custom_action');
                                await actions.consolePrint(
                                  '<<<<<<<<Volunteers found:  ${valueOrDefault<String>(
                                    _model.whVolDocs?.length.toString(),
                                    '0',
                                  )} >>>>>>>>>>>>>>>>',
                                );
                                while (_model.loop <
                                    valueOrDefault<int>(
                                      _model.whVolDocs?.length,
                                      0,
                                    )) {
                                  // createVolPostcodeDoc
                                  logFirebaseEvent(
                                      'Button_createVolPostcodeDoc');

                                  var volunteerPostcodesRecordReference =
                                      VolunteerPostcodesRecord.collection.doc();
                                  firestoreBatch.set(
                                      volunteerPostcodesRecordReference,
                                      createVolunteerPostcodesRecordData(
                                        postcode: _model
                                            .postcodeTxtTextController.text,
                                        isEnabled: false,
                                        volunteerRef: _model.whVolDocs
                                            ?.elementAtOrNull(_model.loop)
                                            ?.reference,
                                        volunteerId: _model.whVolDocs
                                            ?.elementAtOrNull(_model.loop)
                                            ?.reference
                                            .id,
                                        warehouseId:
                                            widget.whDocParam?.reference.id,
                                        isActive: true,
                                        createdBy: 'admin',
                                        createdDate: getCurrentTimestamp,
                                        status: 'active',
                                      ));
                                  _model.newVolPostcodeDoc =
                                      VolunteerPostcodesRecord
                                          .getDocumentFromData(
                                              createVolunteerPostcodesRecordData(
                                                postcode: _model
                                                    .postcodeTxtTextController
                                                    .text,
                                                isEnabled: false,
                                                volunteerRef: _model.whVolDocs
                                                    ?.elementAtOrNull(
                                                        _model.loop)
                                                    ?.reference,
                                                volunteerId: _model.whVolDocs
                                                    ?.elementAtOrNull(
                                                        _model.loop)
                                                    ?.reference
                                                    .id,
                                                warehouseId: widget
                                                    .whDocParam?.reference.id,
                                                isActive: true,
                                                createdBy: 'admin',
                                                createdDate:
                                                    getCurrentTimestamp,
                                                status: 'active',
                                              ),
                                              volunteerPostcodesRecordReference);
                                  _shouldSetState = true;
                                  // updateVolPostcodeDocID
                                  logFirebaseEvent(
                                      'Button_updateVolPostcodeDocID');

                                  firestoreBatch.update(
                                      _model.newVolPostcodeDoc!.reference,
                                      createVolunteerPostcodesRecordData(
                                        volunteerPostcodeId: _model
                                            .newVolPostcodeDoc?.reference.id,
                                      ));
                                  logFirebaseEvent(
                                      'Button_update_component_state');
                                  _model.loop = _model.loop + 1;
                                  safeSetState(() {});
                                }
                                // createWhPostcode
                                logFirebaseEvent('Button_createWhPostcode');

                                var warehousePostcodesRecordReference =
                                    WarehousePostcodesRecord.collection.doc();
                                firestoreBatch.set(
                                    warehousePostcodesRecordReference,
                                    createWarehousePostcodesRecordData(
                                      isActive: true,
                                      postCode:
                                          _model.postcodeTxtTextController.text,
                                      warehouseRef:
                                          widget.whDocParam?.reference,
                                      warehousePortalId:
                                          widget.whDocParam?.warehousePortalId,
                                      warehouseId:
                                          widget.whDocParam?.reference.id,
                                      createdBy: 'admin',
                                      createdDate: getCurrentTimestamp,
                                      status: 'active',
                                    ));
                                _model.newWhPostcode = WarehousePostcodesRecord
                                    .getDocumentFromData(
                                        createWarehousePostcodesRecordData(
                                          isActive: true,
                                          postCode: _model
                                              .postcodeTxtTextController.text,
                                          warehouseRef:
                                              widget.whDocParam?.reference,
                                          warehousePortalId: widget
                                              .whDocParam?.warehousePortalId,
                                          warehouseId:
                                              widget.whDocParam?.reference.id,
                                          createdBy: 'admin',
                                          createdDate: getCurrentTimestamp,
                                          status: 'active',
                                        ),
                                        warehousePostcodesRecordReference);
                                _shouldSetState = true;
                                logFirebaseEvent('Button_backend_call');

                                firestoreBatch.update(
                                    _model.newWhPostcode!.reference,
                                    createWarehousePostcodesRecordData(
                                      warehousePostcodeId:
                                          _model.newWhPostcode?.reference.id,
                                    ));
                                // stockMvTran
                                logFirebaseEvent('Button_stockMvTran');

                                var stockMovementTransactionsRecordReference =
                                    StockMovementTransactionsRecord.collection
                                        .doc();
                                firestoreBatch.set(
                                    stockMovementTransactionsRecordReference,
                                    createStockMovementTransactionsRecordData(
                                      fromName: widget.whDocParam?.displayName,
                                      productName:
                                          _model.postcodeTxtTextController.text,
                                      fromId: widget.whDocParam?.reference.id,
                                      warehouseId:
                                          widget.whDocParam?.reference.id,
                                      createdDate: getCurrentTimestamp,
                                      movementType:
                                          StockMovementEnum.postcodeAdded,
                                    ));
                                _model.stockMovTran = StockMovementTransactionsRecord
                                    .getDocumentFromData(
                                        createStockMovementTransactionsRecordData(
                                          fromName:
                                              widget.whDocParam?.displayName,
                                          productName: _model
                                              .postcodeTxtTextController.text,
                                          fromId:
                                              widget.whDocParam?.reference.id,
                                          warehouseId:
                                              widget.whDocParam?.reference.id,
                                          createdDate: getCurrentTimestamp,
                                          movementType:
                                              StockMovementEnum.postcodeAdded,
                                        ),
                                        stockMovementTransactionsRecordReference);
                                _shouldSetState = true;
                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'New postcode added successfully to warehouse and it\'s volunteers.',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                );
                                logFirebaseEvent('Button_navigate_to');

                                context.goNamed(SelectWhPageWidget.routeName);
                              } else {
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            } finally {
                              await firestoreBatch.commit();
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: 'Add Postcode',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
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
