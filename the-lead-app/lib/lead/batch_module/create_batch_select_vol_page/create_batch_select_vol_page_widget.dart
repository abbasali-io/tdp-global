import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/common_module/comps/no_data_comp/no_data_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'create_batch_select_vol_page_model.dart';
export 'create_batch_select_vol_page_model.dart';

class CreateBatchSelectVolPageWidget extends StatefulWidget {
  const CreateBatchSelectVolPageWidget({super.key});

  static String routeName = 'createBatchSelectVolPage';
  static String routePath = 'createBatchSelectVolPage';

  @override
  State<CreateBatchSelectVolPageWidget> createState() =>
      _CreateBatchSelectVolPageWidgetState();
}

class _CreateBatchSelectVolPageWidgetState
    extends State<CreateBatchSelectVolPageWidget> {
  late CreateBatchSelectVolPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateBatchSelectVolPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createBatchSelectVolPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_BATCH_SELECT_VOL_createBatchSelec');
      logFirebaseEvent('createBatchSelectVolPage_update_app_stat');
      FFAppState().selectedMenu = 'batch';
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                                  'CREATE_BATCH_SELECT_VOL_arrow_back_round');
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
                        'Create Batch',
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
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 8.0, 8.0),
                            child: Text(
                              'Step 1: Select a volunteer for whom you want to create a batch',
                              textAlign: TextAlign.center,
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => PagedListView<
                              DocumentSnapshot<Object?>?, UsersRecord>(
                            pagingController: _model.setListViewController(
                              UsersRecord.collection
                                  .where(
                                    'isActive',
                                    isEqualTo: true,
                                  )
                                  .where(
                                    'assignedWarehouseRef',
                                    isEqualTo: currentUserDocument
                                        ?.assignedWarehouseRef,
                                  )
                                  .where(
                                    'userRole',
                                    isEqualTo: 'volunteer',
                                  )
                                  .orderBy('display_name'),
                            ),
                            padding: EdgeInsets.zero,
                            reverse: false,
                            scrollDirection: Axis.vertical,
                            builderDelegate:
                                PagedChildBuilderDelegate<UsersRecord>(
                              // Customize what your widget looks like when it's loading the first page.
                              firstPageProgressIndicatorBuilder: (_) => Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitRipple(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              ),
                              // Customize what your widget looks like when it's loading another page.
                              newPageProgressIndicatorBuilder: (_) => Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitRipple(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              ),
                              noItemsFoundIndicatorBuilder: (_) =>
                                  NoDataCompWidget(),
                              itemBuilder: (context, _, listViewIndex) {
                                final listViewUsersRecord = _model
                                    .listViewPagingController!
                                    .itemList![listViewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: StreamBuilder<
                                      List<VolunteerPostcodesRecord>>(
                                    stream: queryVolunteerPostcodesRecord(
                                      queryBuilder:
                                          (volunteerPostcodesRecord) =>
                                              volunteerPostcodesRecord
                                                  .where(
                                                    'volunteerRef',
                                                    isEqualTo:
                                                        listViewUsersRecord
                                                            .reference,
                                                  )
                                                  .where(
                                                    'isEnabled',
                                                    isEqualTo: true,
                                                  ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitRipple(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<VolunteerPostcodesRecord>
                                          containerVolunteerPostcodesRecordList =
                                          snapshot.data!;

                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CREATE_BATCH_SELECT_VOL_Container_lddu4i');
                                          final firestoreBatch =
                                              FirebaseFirestore.instance
                                                  .batch();
                                          try {
                                            // createBatch
                                            logFirebaseEvent(
                                                'Container_createBatch');

                                            var batchesRecordReference =
                                                BatchesRecord.collection.doc();
                                            firestoreBatch.set(
                                                batchesRecordReference,
                                                createBatchesRecordData(
                                                  assignedVolunteerName:
                                                      listViewUsersRecord
                                                          .displayName,
                                                  batchNo:
                                                      random_data.randomString(
                                                    6,
                                                    10,
                                                    false,
                                                    true,
                                                    true,
                                                  ),
                                                  createdDate:
                                                      getCurrentTimestamp,
                                                  volunteerRef:
                                                      listViewUsersRecord
                                                          .reference,
                                                  warehouseName:
                                                      listViewUsersRecord
                                                          .assignedWarehouseName,
                                                  warehouseRef:
                                                      listViewUsersRecord
                                                          .assignedWarehouseRef,
                                                  isActive: false,
                                                  createdDateTimeStamp:
                                                      getCurrentTimestamp
                                                          .secondsSinceEpoch,
                                                  isAllDelivered: false,
                                                  volunteerId:
                                                      listViewUsersRecord
                                                          .reference.id,
                                                  warehouseId:
                                                      currentUserDocument
                                                          ?.assignedWarehouseRef
                                                          ?.id,
                                                  createdBy: currentUserUid,
                                                ));
                                            _model.newBatch = BatchesRecord
                                                .getDocumentFromData(
                                                    createBatchesRecordData(
                                                      assignedVolunteerName:
                                                          listViewUsersRecord
                                                              .displayName,
                                                      batchNo: random_data
                                                          .randomString(
                                                        6,
                                                        10,
                                                        false,
                                                        true,
                                                        true,
                                                      ),
                                                      createdDate:
                                                          getCurrentTimestamp,
                                                      volunteerRef:
                                                          listViewUsersRecord
                                                              .reference,
                                                      warehouseName:
                                                          listViewUsersRecord
                                                              .assignedWarehouseName,
                                                      warehouseRef:
                                                          listViewUsersRecord
                                                              .assignedWarehouseRef,
                                                      isActive: false,
                                                      createdDateTimeStamp:
                                                          getCurrentTimestamp
                                                              .secondsSinceEpoch,
                                                      isAllDelivered: false,
                                                      volunteerId:
                                                          listViewUsersRecord
                                                              .reference.id,
                                                      warehouseId:
                                                          currentUserDocument
                                                              ?.assignedWarehouseRef
                                                              ?.id,
                                                      createdBy: currentUserUid,
                                                    ),
                                                    batchesRecordReference);
                                            // updateBatch
                                            logFirebaseEvent(
                                                'Container_updateBatch');

                                            firestoreBatch.update(
                                                _model.newBatch!.reference,
                                                createBatchesRecordData(
                                                  batchId: _model
                                                      .newBatch?.reference.id,
                                                ));
                                            logFirebaseEvent(
                                                'Container_navigate_to');

                                            context.pushNamed(
                                              CreateBatchFilterOrdersPageWidget
                                                  .routeName,
                                              queryParameters: {
                                                'userDocParam': serializeParam(
                                                  listViewUsersRecord,
                                                  ParamType.Document,
                                                ),
                                                'batchRef': serializeParam(
                                                  _model.newBatch?.reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'userDocParam':
                                                    listViewUsersRecord,
                                              },
                                            );
                                          } finally {
                                            await firestoreBatch.commit();
                                          }

                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
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
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .placeholders,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          listViewUsersRecord
                                                              .photoUrl,
                                                          width: 50.0,
                                                          height: 50.0,
                                                          fit: BoxFit.contain,
                                                          errorBuilder: (context,
                                                                  error,
                                                                  stackTrace) =>
                                                              Image.asset(
                                                            'assets/images/error_image.png',
                                                            width: 50.0,
                                                            height: 50.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            listViewUsersRecord
                                                                .displayName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          listViewUsersRecord
                                                              .email,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions.getVolunteerPostcodes(
                                                                containerVolunteerPostcodesRecordList
                                                                    .map((e) =>
                                                                        e.postcode)
                                                                    .toList()),
                                                            'N/A',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
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
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
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
