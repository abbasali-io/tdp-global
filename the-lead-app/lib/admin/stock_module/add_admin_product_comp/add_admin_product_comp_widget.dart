import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_admin_product_comp_model.dart';
export 'add_admin_product_comp_model.dart';

class AddAdminProductCompWidget extends StatefulWidget {
  const AddAdminProductCompWidget({
    super.key,
    required this.adminProductDocComp,
  });

  final AdminProductsRecord? adminProductDocComp;

  @override
  State<AddAdminProductCompWidget> createState() =>
      _AddAdminProductCompWidgetState();
}

class _AddAdminProductCompWidgetState extends State<AddAdminProductCompWidget> {
  late AddAdminProductCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAdminProductCompModel());

    _model.assignStockTxtTextController ??= TextEditingController();
    _model.assignStockTxtFocusNode ??= FocusNode();

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
      child: Container(
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
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).placeholders,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Text(
                              widget.adminProductDocComp!.name,
                              textAlign: TextAlign.start,
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
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 8.0),
                                  child: Text(
                                    'Current\nStock',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .placeholders,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 30.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            formatNumber(
                                              widget.adminProductDocComp!
                                                  .availableStock,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.automatic,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
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
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 8.0),
                                  child: Text(
                                    'Add\nStock',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller:
                                        _model.assignStockTxtTextController,
                                    focusNode: _model.assignStockTxtFocusNode,
                                    autofocus: false,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      hintText: 'e.g. 150',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .placeholders,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLength: 4,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .assignStockTxtTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.none),
                                          );
                                        }),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 4.0, 0.0),
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 40.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      icon: Icon(
                                        Icons.double_arrow,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 40.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'ADD_ADMIN_PRODUCT_double_arrow_ICN_ON_TA');
                                        var _shouldSetState = false;
                                        final firestoreBatch =
                                            FirebaseFirestore.instance.batch();
                                        try {
                                          logFirebaseEvent(
                                              'IconButton_validate_form');
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          logFirebaseEvent(
                                              'IconButton_alert_dialog');
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Are you sure?'),
                                                        content: Text(
                                                            'This will add more stock to admin product.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text(
                                                                'Yes Sure'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            // createStockMovementTran
                                            logFirebaseEvent(
                                                'IconButton_createStockMovementTran');

                                            var stockMovementTransactionsRecordReference =
                                                StockMovementTransactionsRecord
                                                    .collection
                                                    .doc();
                                            firestoreBatch.set(
                                                stockMovementTransactionsRecordReference,
                                                createStockMovementTransactionsRecordData(
                                                  fromName:
                                                      currentUserDisplayName,
                                                  fromId:
                                                      currentUserReference?.id,
                                                  toName:
                                                      currentUserDisplayName,
                                                  toId:
                                                      currentUserReference?.id,
                                                  fromOldQty: widget
                                                      .adminProductDocComp
                                                      ?.availableStock
                                                      .toString(),
                                                  toOldQty: widget
                                                      .adminProductDocComp
                                                      ?.availableStock
                                                      .toString(),
                                                  qty: int.tryParse(_model
                                                      .assignStockTxtTextController
                                                      .text),
                                                  productName: widget
                                                      .adminProductDocComp
                                                      ?.name,
                                                  productPortalId: widget
                                                      .adminProductDocComp
                                                      ?.productPortalId,
                                                  createdDate:
                                                      getCurrentTimestamp,
                                                  movementType:
                                                      StockMovementEnum
                                                          .assignToAdmin,
                                                  fromEntity:
                                                      EntitiesEnum.Admin,
                                                  toEntity: EntitiesEnum.Admin,
                                                ));
                                            _model.newStockTran =
                                                StockMovementTransactionsRecord
                                                    .getDocumentFromData(
                                                        createStockMovementTransactionsRecordData(
                                                          fromName:
                                                              currentUserDisplayName,
                                                          fromId:
                                                              currentUserReference
                                                                  ?.id,
                                                          toName:
                                                              currentUserDisplayName,
                                                          toId:
                                                              currentUserReference
                                                                  ?.id,
                                                          fromOldQty: widget
                                                              .adminProductDocComp
                                                              ?.availableStock
                                                              .toString(),
                                                          toOldQty: widget
                                                              .adminProductDocComp
                                                              ?.availableStock
                                                              .toString(),
                                                          qty: int.tryParse(_model
                                                              .assignStockTxtTextController
                                                              .text),
                                                          productName: widget
                                                              .adminProductDocComp
                                                              ?.name,
                                                          productPortalId: widget
                                                              .adminProductDocComp
                                                              ?.productPortalId,
                                                          createdDate:
                                                              getCurrentTimestamp,
                                                          movementType:
                                                              StockMovementEnum
                                                                  .assignToAdmin,
                                                          fromEntity:
                                                              EntitiesEnum
                                                                  .Admin,
                                                          toEntity: EntitiesEnum
                                                              .Admin,
                                                        ),
                                                        stockMovementTransactionsRecordReference);
                                            _shouldSetState = true;
                                            logFirebaseEvent(
                                                'IconButton_backend_call');

                                            firestoreBatch.update(
                                                _model.newStockTran!.reference,
                                                createStockMovementTransactionsRecordData(
                                                  transactionId: _model
                                                      .newStockTran
                                                      ?.reference
                                                      .id,
                                                ));
                                            // updateAdminProductStock
                                            logFirebaseEvent(
                                                'IconButton_updateAdminProductStock');

                                            firestoreBatch.update(
                                                widget.adminProductDocComp!
                                                    .reference,
                                                {
                                                  ...mapToFirestore(
                                                    {
                                                      'availableStock':
                                                          FieldValue.increment(
                                                              int.parse(_model
                                                                  .assignStockTxtTextController
                                                                  .text)),
                                                    },
                                                  ),
                                                });
                                            logFirebaseEvent(
                                                'IconButton_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Stock added sucessfully.',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                            logFirebaseEvent(
                                                'IconButton_clear_text_fields_pin_codes');
                                            safeSetState(() {
                                              _model
                                                  .assignStockTxtTextController
                                                  ?.clear();
                                            });
                                          } else {
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }
                                        } finally {
                                          await firestoreBatch.commit();
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
