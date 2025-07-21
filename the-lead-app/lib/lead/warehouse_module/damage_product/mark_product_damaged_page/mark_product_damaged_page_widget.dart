import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mark_product_damaged_page_model.dart';
export 'mark_product_damaged_page_model.dart';

class MarkProductDamagedPageWidget extends StatefulWidget {
  const MarkProductDamagedPageWidget({
    super.key,
    required this.warehouseProductDcoParam,
    required this.stockType,
  });

  final WarehouseProductsRecord? warehouseProductDcoParam;
  final String? stockType;

  static String routeName = 'markProductDamagedPage';
  static String routePath = 'markProductDamagedPage';

  @override
  State<MarkProductDamagedPageWidget> createState() =>
      _MarkProductDamagedPageWidgetState();
}

class _MarkProductDamagedPageWidgetState
    extends State<MarkProductDamagedPageWidget> {
  late MarkProductDamagedPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarkProductDamagedPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'markProductDamagedPage'});
    _model.dmgQtyTextController ??= TextEditingController();
    _model.dmgQtyFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'MARK_PRODUCT_DAMAGED_arrow_back_rounded_');
                              logFirebaseEvent('IconButton_navigate_back');
                              context.pop();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
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
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Mark Product as  Damaged',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.5,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.5),
            child: Container(
              width: 700.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(),
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'MARK_PRODUCT_DAMAGED_Image_3a232h4s_ON_T');
                                  logFirebaseEvent('Image_expand_image');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.network(
                                          widget.warehouseProductDcoParam!
                                              .imageUrl,
                                          fit: BoxFit.contain,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        allowRotation: false,
                                        tag: widget
                                            .warehouseProductDcoParam!.imageUrl,
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: widget
                                      .warehouseProductDcoParam!.imageUrl,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      widget
                                          .warehouseProductDcoParam!.imageUrl,
                                      width: 60.0,
                                      height: 60.0,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Image.asset(
                                        'assets/images/error_image.png',
                                        width: 60.0,
                                        height: 60.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                valueOrDefault<String>(
                                  widget.warehouseProductDcoParam?.name,
                                  'N/A',
                                ),
                                style: FlutterFlowTheme.of(context)
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 24.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                color:
                                    FlutterFlowTheme.of(context).placeholders,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Icon(
                                            Icons.account_tree_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              widget.stockType ==
                                                      StockTypes.online.name
                                                  ? valueOrDefault<String>(
                                                      formatNumber(
                                                        widget
                                                            .warehouseProductDcoParam
                                                            ?.onlineStock,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .automatic,
                                                      ),
                                                      '0',
                                                    )
                                                  : valueOrDefault<String>(
                                                      formatNumber(
                                                        widget
                                                            .warehouseProductDcoParam
                                                            ?.offlineStock,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .automatic,
                                                      ),
                                                      '0',
                                                    ),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Available ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget.stockType,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' stock',
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 36.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.dmgQtyTextController,
                            focusNode: _model.dmgQtyFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Quantity',
                              labelStyle: FlutterFlowTheme.of(context)
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
                              hintText: 'e.g 5',
                              hintStyle: FlutterFlowTheme.of(context)
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
                                        .placeholders,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).placeholders,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).success,
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
                            ),
                            style: FlutterFlowTheme.of(context)
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                ),
                            maxLength: 3,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            buildCounter: (context,
                                    {required currentLength,
                                    required isFocused,
                                    maxLength}) =>
                                null,
                            keyboardType: TextInputType.number,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.dmgQtyTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 20.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController2,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Description',
                              labelStyle: FlutterFlowTheme.of(context)
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
                              hintText: 'type here...',
                              hintStyle: FlutterFlowTheme.of(context)
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
                                        .placeholders,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).placeholders,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).success,
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
                            ),
                            style: FlutterFlowTheme.of(context)
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                ),
                            maxLines: 5,
                            maxLength: 150,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 36.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MARK_PRODUCT_DAMAGED_CANCEL_BTN_ON_TAP');
                                    logFirebaseEvent('Button_navigate_back');
                                    context.safePop();
                                  },
                                  text: 'Cancel',
                                  options: FFButtonOptions(
                                    height: 44.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverElevation: 1.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'MARK_PRODUCT_DAMAGED_UPDATE_BTN_ON_TAP');
                                      var _shouldSetState = false;
                                      final firestoreBatch =
                                          FirebaseFirestore.instance.batch();
                                      try {
                                        logFirebaseEvent(
                                            'Button_validate_form');
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        logFirebaseEvent('Button_alert_dialog');
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Damage Product?'),
                                                      content: Text(
                                                          'This will reduce the stock of the selected product.'),
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
                                                          child:
                                                              Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (!confirmDialogResponse) {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                        if (widget.stockType ==
                                            StockTypes.online.name) {
                                          if ((int availableStock,
                                                  int damagedStock) {
                                            return availableStock >=
                                                damagedStock;
                                          }(
                                              valueOrDefault<int>(
                                                widget.warehouseProductDcoParam
                                                    ?.onlineStock,
                                                0,
                                              ),
                                              int.parse(_model
                                                  .dmgQtyTextController
                                                  .text))) {
                                            logFirebaseEvent(
                                                'Button_backend_call');
                                            _model.apiResult69u =
                                                await WarehousesGroup
                                                    .damagedStockCall
                                                    .call(
                                              warehouseId: widget
                                                  .warehouseProductDcoParam
                                                  ?.warehousePortalId,
                                              productId: widget
                                                  .warehouseProductDcoParam
                                                  ?.productPortalId,
                                              quantity: valueOrDefault<int>(
                                                int.tryParse(_model
                                                    .dmgQtyTextController.text),
                                                0,
                                              ),
                                              reason: valueOrDefault<String>(
                                                _model.textController2.text,
                                                'Box Broken',
                                              ),
                                            );

                                            _shouldSetState = true;
                                            if (!(_model
                                                    .apiResult69u?.succeeded ??
                                                true)) {
                                              // createAPiFailedDoc
                                              logFirebaseEvent(
                                                  'Button_createAPiFailedDoc');

                                              firestoreBatch.set(
                                                  APIFailedRecord.collection
                                                      .doc(),
                                                  createAPIFailedRecordData(
                                                    createdDate:
                                                        getCurrentTimestamp,
                                                    createdBy: currentUserUid,
                                                    warehouseId: widget
                                                        .warehouseProductDcoParam
                                                        ?.warehouseId,
                                                    productPortalId: widget
                                                        .warehouseProductDcoParam
                                                        ?.productPortalId,
                                                    stockMovementType:
                                                        StockMovementEnum
                                                            .damagedByWarehouse
                                                            .name,
                                                    apiName:
                                                        'damageStock(Warehouses)',
                                                    stockType:
                                                        widget.stockType,
                                                    quantityAttempted:
                                                        int.tryParse(_model
                                                            .dmgQtyTextController
                                                            .text),
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title:
                                                        Text('Network Error !'),
                                                    content: Text(
                                                        'Seems like API is not responding at the movement, Please try again later.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          } else {
                                            logFirebaseEvent(
                                                'Button_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Please enter the quantity equal or less than the available quantity to mark damage of the product.',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }
                                        } else {
                                          if (!((int availableStock,
                                                  int damagedStock) {
                                            return availableStock >=
                                                damagedStock;
                                          }(
                                              valueOrDefault<int>(
                                                widget.warehouseProductDcoParam
                                                    ?.offlineStock,
                                                0,
                                              ),
                                              int.parse(_model
                                                  .dmgQtyTextController
                                                  .text)))) {
                                            logFirebaseEvent(
                                                'Button_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Please enter the quantity equal or less than the available quantity to mark damage of the product.',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }
                                        }

                                        // createDamagedProduct
                                        logFirebaseEvent(
                                            'Button_createDamagedProduct');

                                        var damagedProductsRecordReference =
                                            DamagedProductsRecord.collection
                                                .doc();
                                        firestoreBatch.set(
                                            damagedProductsRecordReference,
                                            createDamagedProductsRecordData(
                                              damagedByUserRef:
                                                  currentUserReference,
                                              damagedDate: getCurrentTimestamp,
                                              description:
                                                  _model.textController2.text,
                                              imageUrl: widget
                                                  .warehouseProductDcoParam
                                                  ?.imageUrl,
                                              name: widget
                                                  .warehouseProductDcoParam
                                                  ?.name,
                                              qty: int.tryParse(_model
                                                  .dmgQtyTextController.text),
                                              unitPrice: widget
                                                  .warehouseProductDcoParam
                                                  ?.price,
                                              warehouseRef: currentUserDocument
                                                  ?.assignedWarehouseRef,
                                              totalValue:
                                                  valueOrDefault<double>(
                                                int.parse(_model
                                                        .dmgQtyTextController
                                                        .text) *
                                                    widget
                                                        .warehouseProductDcoParam!
                                                        .price,
                                                0.0,
                                              ),
                                              isActive: true,
                                              warehouseName: valueOrDefault(
                                                  currentUserDocument
                                                      ?.assignedWarehouseName,
                                                  ''),
                                              productPortalId: widget
                                                  .warehouseProductDcoParam
                                                  ?.productPortalId,
                                              userId: currentUserReference?.id,
                                              isOnline: widget.stockType ==
                                                      StockTypes.online.name
                                                  ? true
                                                  : false,
                                              damagedBy: currentUserUid,
                                              createdBy: currentUserUid,
                                              warehouseId: currentUserDocument
                                                  ?.assignedWarehouseRef?.id,
                                              createdDate: getCurrentTimestamp,
                                              stockType: widget.stockType,
                                            ));
                                        _model.newDamagedProduct =
                                            DamagedProductsRecord.getDocumentFromData(
                                                createDamagedProductsRecordData(
                                                  damagedByUserRef:
                                                      currentUserReference,
                                                  damagedDate:
                                                      getCurrentTimestamp,
                                                  description: _model
                                                      .textController2.text,
                                                  imageUrl: widget
                                                      .warehouseProductDcoParam
                                                      ?.imageUrl,
                                                  name: widget
                                                      .warehouseProductDcoParam
                                                      ?.name,
                                                  qty: int.tryParse(_model
                                                      .dmgQtyTextController
                                                      .text),
                                                  unitPrice: widget
                                                      .warehouseProductDcoParam
                                                      ?.price,
                                                  warehouseRef:
                                                      currentUserDocument
                                                          ?.assignedWarehouseRef,
                                                  totalValue:
                                                      valueOrDefault<double>(
                                                    int.parse(_model
                                                            .dmgQtyTextController
                                                            .text) *
                                                        widget
                                                            .warehouseProductDcoParam!
                                                            .price,
                                                    0.0,
                                                  ),
                                                  isActive: true,
                                                  warehouseName: valueOrDefault(
                                                      currentUserDocument
                                                          ?.assignedWarehouseName,
                                                      ''),
                                                  productPortalId: widget
                                                      .warehouseProductDcoParam
                                                      ?.productPortalId,
                                                  userId:
                                                      currentUserReference?.id,
                                                  isOnline: widget.stockType ==
                                                          StockTypes.online.name
                                                      ? true
                                                      : false,
                                                  damagedBy: currentUserUid,
                                                  createdBy: currentUserUid,
                                                  warehouseId:
                                                      currentUserDocument
                                                          ?.assignedWarehouseRef
                                                          ?.id,
                                                  createdDate:
                                                      getCurrentTimestamp,
                                                  stockType: widget.stockType,
                                                ),
                                                damagedProductsRecordReference);
                                        _shouldSetState = true;
                                        // updateDamagedProduct
                                        logFirebaseEvent(
                                            'Button_updateDamagedProduct');

                                        firestoreBatch.update(
                                            _model.newDamagedProduct!.reference,
                                            createDamagedProductsRecordData(
                                              damagedProductId: _model
                                                  .newDamagedProduct
                                                  ?.reference
                                                  .id,
                                            ));
                                        // createStockMovementTran
                                        logFirebaseEvent(
                                            'Button_createStockMovementTran');

                                        var stockMovementTransactionsRecordReference =
                                            StockMovementTransactionsRecord
                                                .collection
                                                .doc();
                                        firestoreBatch.set(
                                            stockMovementTransactionsRecordReference,
                                            createStockMovementTransactionsRecordData(
                                              fromEntity:
                                                  EntitiesEnum.Warehouse,
                                              fromName: valueOrDefault(
                                                  currentUserDocument
                                                      ?.assignedWarehouseName,
                                                  ''),
                                              fromId: currentUserDocument
                                                  ?.assignedWarehouseRef?.id,
                                              qty: int.tryParse(_model
                                                  .dmgQtyTextController.text),
                                              productName: widget
                                                  .warehouseProductDcoParam
                                                  ?.name,
                                              productPortalId: widget
                                                  .warehouseProductDcoParam
                                                  ?.productPortalId,
                                              byUserId:
                                                  currentUserReference?.id,
                                              byUserName:
                                                  currentUserDisplayName,
                                              createdDate: getCurrentTimestamp,
                                              movementType: StockMovementEnum
                                                  .damagedByWarehouse,
                                              stockType: widget.stockType,
                                              warehouseId: currentUserDocument
                                                  ?.assignedWarehouseRef?.id,
                                              createdBy: currentUserUid,
                                              toName: '',
                                            ));
                                        _model.damageStockTran =
                                            StockMovementTransactionsRecord
                                                .getDocumentFromData(
                                                    createStockMovementTransactionsRecordData(
                                                      fromEntity: EntitiesEnum
                                                          .Warehouse,
                                                      fromName: valueOrDefault(
                                                          currentUserDocument
                                                              ?.assignedWarehouseName,
                                                          ''),
                                                      fromId: currentUserDocument
                                                          ?.assignedWarehouseRef
                                                          ?.id,
                                                      qty: int.tryParse(_model
                                                          .dmgQtyTextController
                                                          .text),
                                                      productName: widget
                                                          .warehouseProductDcoParam
                                                          ?.name,
                                                      productPortalId: widget
                                                          .warehouseProductDcoParam
                                                          ?.productPortalId,
                                                      byUserId:
                                                          currentUserReference
                                                              ?.id,
                                                      byUserName:
                                                          currentUserDisplayName,
                                                      createdDate:
                                                          getCurrentTimestamp,
                                                      movementType:
                                                          StockMovementEnum
                                                              .damagedByWarehouse,
                                                      stockType:
                                                          widget.stockType,
                                                      warehouseId:
                                                          currentUserDocument
                                                              ?.assignedWarehouseRef
                                                              ?.id,
                                                      createdBy: currentUserUid,
                                                      toName: '',
                                                    ),
                                                    stockMovementTransactionsRecordReference);
                                        _shouldSetState = true;
                                        // updateStockMovementTran
                                        logFirebaseEvent(
                                            'Button_updateStockMovementTran');

                                        firestoreBatch.update(
                                            _model.damageStockTran!.reference,
                                            createStockMovementTransactionsRecordData(
                                              transactionId: _model
                                                  .damageStockTran
                                                  ?.reference
                                                  .id,
                                            ));
                                        if (widget.stockType ==
                                            StockTypes.online.name) {
                                          // updateWhProduct
                                          logFirebaseEvent(
                                              'Button_updateWhProduct');

                                          firestoreBatch.update(
                                              widget.warehouseProductDcoParam!
                                                  .reference,
                                              {
                                                ...mapToFirestore(
                                                  {
                                                    'totalStock':
                                                        FieldValue.increment(
                                                            -(int.parse(_model
                                                                .dmgQtyTextController
                                                                .text))),
                                                    'onlineStock':
                                                        FieldValue.increment(
                                                            -(int.parse(_model
                                                                .dmgQtyTextController
                                                                .text))),
                                                  },
                                                ),
                                              });
                                        } else {
                                          // updateWhProduct
                                          logFirebaseEvent(
                                              'Button_updateWhProduct');

                                          firestoreBatch.update(
                                              widget.warehouseProductDcoParam!
                                                  .reference,
                                              {
                                                ...mapToFirestore(
                                                  {
                                                    'totalStock':
                                                        FieldValue.increment(
                                                            -(int.parse(_model
                                                                .dmgQtyTextController
                                                                .text))),
                                                    'offlineStock':
                                                        FieldValue.increment(
                                                            -(int.parse(_model
                                                                .dmgQtyTextController
                                                                .text))),
                                                  },
                                                ),
                                              });
                                        }

                                        logFirebaseEvent(
                                            'Button_clear_text_fields_pin_codes');
                                        safeSetState(() {
                                          _model.dmgQtyTextController?.clear();
                                          _model.textController2?.clear();
                                        });
                                        logFirebaseEvent(
                                            'Button_show_snack_bar');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Product marked as damaged successfully...',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                          ),
                                        );
                                        logFirebaseEvent('Button_navigate_to');

                                        context.goNamed(
                                          WarehouseDamagedProductsPageWidget
                                              .routeName,
                                          queryParameters: {
                                            'tabIndex': serializeParam(
                                              0,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } finally {
                                        await firestoreBatch.commit();
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    text: 'Update',
                                    options: FFButtonOptions(
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
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
                                                .primaryBtnText,
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
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverElevation: 1.0,
                                    ),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
