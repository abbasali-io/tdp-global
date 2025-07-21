import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/no_data_found/no_data_found_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'batch_select_volunteer_postcodes_model.dart';
export 'batch_select_volunteer_postcodes_model.dart';

class BatchSelectVolunteerPostcodesWidget extends StatefulWidget {
  const BatchSelectVolunteerPostcodesWidget({
    super.key,
    this.userDocParam,
  });

  final UsersRecord? userDocParam;

  static String routeName = 'batch_select_volunteer_postcodes';
  static String routePath = 'batchSelectVolunteerPostcodes';

  @override
  State<BatchSelectVolunteerPostcodesWidget> createState() =>
      _BatchSelectVolunteerPostcodesWidgetState();
}

class _BatchSelectVolunteerPostcodesWidgetState
    extends State<BatchSelectVolunteerPostcodesWidget>
    with TickerProviderStateMixin {
  late BatchSelectVolunteerPostcodesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatchSelectVolunteerPostcodesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'batch_select_volunteer_postcodes'});
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('BATCH_SELECT_VOLUNTEER_POSTCODES_arrow_b');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Step 2 - Select Post Code',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  font: GoogleFonts.sen(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.5),
            child: Container(
              width: 700.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Text(
                              'Possible Volunteers',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
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
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final selectedPostCode = widget
                                  .userDocParam?.volunteerPostcodeList
                                  .toList() ??
                              [];
                          if (selectedPostCode.isEmpty) {
                            return Center(
                              child: NoDataFoundWidget(),
                            );
                          }

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: selectedPostCode.length,
                            itemBuilder: (context, selectedPostCodeIndex) {
                              final selectedPostCodeItem =
                                  selectedPostCode[selectedPostCodeIndex];
                              return Visibility(
                                visible: !_model.isBusy,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'BATCH_SELECT_VOLUNTEER_POSTCODES_Contain');
                                      logFirebaseEvent(
                                          'Container_update_page_state');
                                      _model.isBusy = true;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'Container_backend_call');

                                      var batchesRecordReference =
                                          BatchesRecord.collection.doc();
                                      await batchesRecordReference.set({
                                        ...createBatchesRecordData(
                                          warehouseRef: currentUserDocument
                                              ?.assignedWarehouseRef,
                                          createdDate: getCurrentTimestamp,
                                          volunteerRef:
                                              widget.userDocParam?.reference,
                                          assignedVolunteerName:
                                              widget.userDocParam?.displayName,
                                          warehouseName: widget.userDocParam
                                              ?.assignedWarehouseName,
                                          isNew: true,
                                          isAssigned: false,
                                          isClosed: false,
                                          noOfOrders: 0,
                                          batchNo: random_data.randomString(
                                            6,
                                            6,
                                            true,
                                            true,
                                            true,
                                          ),
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'volunteerPostCodes': widget
                                                .userDocParam
                                                ?.volunteerPostcodeList,
                                          },
                                        ),
                                      });
                                      _model.batchDoc =
                                          BatchesRecord.getDocumentFromData({
                                        ...createBatchesRecordData(
                                          warehouseRef: currentUserDocument
                                              ?.assignedWarehouseRef,
                                          createdDate: getCurrentTimestamp,
                                          volunteerRef:
                                              widget.userDocParam?.reference,
                                          assignedVolunteerName:
                                              widget.userDocParam?.displayName,
                                          warehouseName: widget.userDocParam
                                              ?.assignedWarehouseName,
                                          isNew: true,
                                          isAssigned: false,
                                          isClosed: false,
                                          noOfOrders: 0,
                                          batchNo: random_data.randomString(
                                            6,
                                            6,
                                            true,
                                            true,
                                            true,
                                          ),
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'volunteerPostCodes': widget
                                                .userDocParam
                                                ?.volunteerPostcodeList,
                                          },
                                        ),
                                      }, batchesRecordReference);
                                      logFirebaseEvent(
                                          'Container_update_page_state');
                                      _model.isBusy = false;
                                      safeSetState(() {});
                                      logFirebaseEvent('Container_navigate_to');

                                      context.pushNamed(
                                        SelectOrdersForBatchWidget.routeName,
                                        queryParameters: {
                                          'batchDocParam': serializeParam(
                                            _model.batchDoc,
                                            ParamType.Document,
                                          ),
                                          'firstPostCode': serializeParam(
                                            functions
                                                .getFirstPartOfOrderPostcode(
                                                    selectedPostCodeItem),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'batchDocParam': _model.batchDoc,
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5.0,
                                            color: Color(0x1F000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Text(
                                              functions
                                                  .getFirstPartOfOrderPostcode(
                                                      selectedPostCodeItem),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        font: GoogleFonts.sen(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation']!),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
