import '/backend/backend.dart';
import '/components/product_list_item/product_list_item_widget.dart';
import '/components/volunteer_list_item_with_orders/volunteer_list_item_with_orders_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'volunteer_stock_details_bottom_sheet_model.dart';
export 'volunteer_stock_details_bottom_sheet_model.dart';

class VolunteerStockDetailsBottomSheetWidget extends StatefulWidget {
  const VolunteerStockDetailsBottomSheetWidget({
    super.key,
    this.userDocParam,
  });

  final UsersRecord? userDocParam;

  @override
  State<VolunteerStockDetailsBottomSheetWidget> createState() =>
      _VolunteerStockDetailsBottomSheetWidgetState();
}

class _VolunteerStockDetailsBottomSheetWidgetState
    extends State<VolunteerStockDetailsBottomSheetWidget> {
  late VolunteerStockDetailsBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => VolunteerStockDetailsBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.5),
      child: Material(
        color: Colors.transparent,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Container(
          width: 700.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  -1.0,
                  -2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Container(
                          width: 700.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: wrapWithModel(
                          model: _model.volunteerListItemWithOrdersModel,
                          updateCallback: () => safeSetState(() {}),
                          child: VolunteerListItemWithOrdersWidget(
                            userDocParam: widget.userDocParam,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 12.0,
                              decoration: BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      PagedListView<DocumentSnapshot<Object?>?,
                          VolunteerAssignedProductsRecord>(
                        pagingController: _model.setListViewController(
                            VolunteerAssignedProductsRecord.collection(
                                    widget.userDocParam?.reference)
                                .where(
                                  'isActive',
                                  isEqualTo: true,
                                )
                                .orderBy('productName'),
                            parent: widget.userDocParam?.reference),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        reverse: false,
                        scrollDirection: Axis.vertical,
                        builderDelegate: PagedChildBuilderDelegate<
                            VolunteerAssignedProductsRecord>(
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

                          itemBuilder: (context, _, listViewIndex) {
                            final listViewVolunteerAssignedProductsRecord =
                                _model.listViewPagingController!
                                    .itemList![listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: wrapWithModel(
                                model: _model.productListItemModels.getModel(
                                  listViewVolunteerAssignedProductsRecord
                                      .productId,
                                  listViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ProductListItemWidget(
                                  key: Key(
                                    'Keyx8b_${listViewVolunteerAssignedProductsRecord.productId}',
                                  ),
                                  volunteerProductsDoc:
                                      listViewVolunteerAssignedProductsRecord,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 700.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: 100.0,
                              height: 40.0,
                              decoration: BoxDecoration(),
                            ),
                          ),
                          Text(
                            'Volunteer Stock details',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.sen(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: 100.0,
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'VOLUNTEER_STOCK_DETAILS_BOTTOM_SHEET_Row');
                                  logFirebaseEvent('Row_bottom_sheet');
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'VOLUNTEER_STOCK_DETAILS_BOTTOM_SHEET_Ico');
                                        logFirebaseEvent('Icon_bottom_sheet');
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 22.0,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
