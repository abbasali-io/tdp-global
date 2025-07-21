import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? BootstrapPageWidget() : LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? BootstrapPageWidget()
              : LoginPageWidget(),
          routes: [
            FFRoute(
              name: WarehouseUsersListPageWidget.routeName,
              path: WarehouseUsersListPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WarehouseUsersListPageWidget(),
            ),
            FFRoute(
              name: UserProfileWidget.routeName,
              path: UserProfileWidget.routePath,
              requireAuth: true,
              builder: (context, params) => UserProfileWidget(),
            ),
            FFRoute(
              name: AssignStockToVolPageWidget.routeName,
              path: AssignStockToVolPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AssignStockToVolPageWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: WarehousePostcodesPageWidget.routeName,
              path: WarehousePostcodesPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WarehousePostcodesPageWidget(),
            ),
            FFRoute(
              name: BatchListPageWidget.routeName,
              path: BatchListPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BatchListPageWidget(),
            ),
            FFRoute(
              name: CreateBatchSelectVolPageWidget.routeName,
              path: CreateBatchSelectVolPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CreateBatchSelectVolPageWidget(),
            ),
            FFRoute(
              name: NewOnlineOrdersPageWidget.routeName,
              path: NewOnlineOrdersPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NewOnlineOrdersPageWidget(),
            ),
            FFRoute(
              name: BatchDetailPageWidget.routeName,
              path: BatchDetailPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'batchDocParam':
                    getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => BatchDetailPageWidget(
                batchDocParam: params.getParam(
                  'batchDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: OnlineOrdersDetailsPageWidget.routeName,
              path: OnlineOrdersDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'orderDocParam': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => OnlineOrdersDetailsPageWidget(
                orderDocParam: params.getParam(
                  'orderDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: VolunteerStockPageWidget.routeName,
              path: VolunteerStockPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => VolunteerStockPageWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: WarehouseDamagedProductsPageWidget.routeName,
              path: WarehouseDamagedProductsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WarehouseDamagedProductsPageWidget(
                tabIndex: params.getParam(
                  'tabIndex',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: CompletedDeliveriesPageWidget.routeName,
              path: CompletedDeliveriesPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => CompletedDeliveriesPageWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: MarkProductDamagedPageWidget.routeName,
              path: MarkProductDamagedPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDcoParam': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => MarkProductDamagedPageWidget(
                warehouseProductDcoParam: params.getParam(
                  'warehouseProductDcoParam',
                  ParamType.Document,
                ),
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ApprovedPaymentsPageWidget.routeName,
              path: ApprovedPaymentsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ApprovedPaymentsPageWidget(),
            ),
            FFRoute(
              name: PendingPaymentDetailsPageWidget.routeName,
              path: PendingPaymentDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'cashTansactionDocParam': getDoc(
                    ['cashTransactions'], CashTransactionsRecord.fromSnapshot),
              },
              builder: (context, params) => PendingPaymentDetailsPageWidget(
                cashTansactionDocParam: params.getParam(
                  'cashTansactionDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ApprovedPaymentDetailsPageWidget.routeName,
              path: ApprovedPaymentDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'cashTansactionDocParam': getDoc(
                    ['cashTransactions'], CashTransactionsRecord.fromSnapshot),
              },
              builder: (context, params) => ApprovedPaymentDetailsPageWidget(
                cashTansactionDocParam: params.getParam(
                  'cashTansactionDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: BootstrapPageWidget.routeName,
              path: BootstrapPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BootstrapPageWidget(),
            ),
            FFRoute(
              name: LeadHomePageWidget.routeName,
              path: LeadHomePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadHomePageWidget(),
            ),
            FFRoute(
              name: AdminHomePageWidget.routeName,
              path: AdminHomePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminHomePageWidget(),
            ),
            FFRoute(
              name: PendingPaymentsPageWidget.routeName,
              path: PendingPaymentsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PendingPaymentsPageWidget(),
            ),
            FFRoute(
              name: PaymentRequestsPageWidget.routeName,
              path: PaymentRequestsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PaymentRequestsPageWidget(),
            ),
            FFRoute(
              name: PaymentRequestDetailsPageWidget.routeName,
              path: PaymentRequestDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'cashTansactionDocParam': getDoc(
                    ['cashTransactions'], CashTransactionsRecord.fromSnapshot),
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => PaymentRequestDetailsPageWidget(
                cashTansactionDocParam: params.getParam(
                  'cashTansactionDocParam',
                  ParamType.Document,
                ),
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: AdminPaymentRequestsPageWidget.routeName,
              path: AdminPaymentRequestsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminPaymentRequestsPageWidget(),
            ),
            FFRoute(
              name: PaymentsReceivedPageWidget.routeName,
              path: PaymentsReceivedPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PaymentsReceivedPageWidget(),
            ),
            FFRoute(
              name: ReceivedPaymentDetailsPageWidget.routeName,
              path: ReceivedPaymentDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'cashTansactionDocParam': getDoc(
                    ['cashTransactions'], CashTransactionsRecord.fromSnapshot),
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => ReceivedPaymentDetailsPageWidget(
                cashTansactionDocParam: params.getParam(
                  'cashTansactionDocParam',
                  ParamType.Document,
                ),
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: PaymentReceivedLeadPageWidget.routeName,
              path: PaymentReceivedLeadPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PaymentReceivedLeadPageWidget(),
            ),
            FFRoute(
              name: PaymentReceivedLeadDetailsPageWidget.routeName,
              path: PaymentReceivedLeadDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'cashTansactionDocParam': getDoc(
                    ['cashTransactions'], CashTransactionsRecord.fromSnapshot),
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) =>
                  PaymentReceivedLeadDetailsPageWidget(
                cashTansactionDocParam: params.getParam(
                  'cashTansactionDocParam',
                  ParamType.Document,
                ),
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: PendDeliveriesPageWidget.routeName,
              path: PendDeliveriesPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => PendDeliveriesPageWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: LeadsListPageWidget.routeName,
              path: LeadsListPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadsListPageWidget(),
            ),
            FFRoute(
              name: SelectWarehousePageWidget.routeName,
              path: SelectWarehousePageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'leadDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => SelectWarehousePageWidget(
                leadDocParam: params.getParam(
                  'leadDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: AdminSecretKeyPageWidget.routeName,
              path: AdminSecretKeyPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminSecretKeyPageWidget(),
            ),
            FFRoute(
              name: AssignedOnlineOrdersPageWidget.routeName,
              path: AssignedOnlineOrdersPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AssignedOnlineOrdersPageWidget(),
            ),
            FFRoute(
              name: AdminSearchPaymentsPageWidget.routeName,
              path: AdminSearchPaymentsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminSearchPaymentsPageWidget(),
            ),
            FFRoute(
              name: AdminPaymentSearchResultsWidget.routeName,
              path: AdminPaymentSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminPaymentSearchResultsWidget(),
            ),
            FFRoute(
              name: LeadMakePaymentPageWidget.routeName,
              path: LeadMakePaymentPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadMakePaymentPageWidget(),
            ),
            FFRoute(
              name: LeadSearchPaymentsPageWidget.routeName,
              path: LeadSearchPaymentsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadSearchPaymentsPageWidget(),
            ),
            FFRoute(
              name: LeadPaymentSearchResultsWidget.routeName,
              path: LeadPaymentSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadPaymentSearchResultsWidget(),
            ),
            FFRoute(
              name: LeadSearchBatchPageWidget.routeName,
              path: LeadSearchBatchPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadSearchBatchPageWidget(),
            ),
            FFRoute(
              name: LeadBatchSearchResultWidget.routeName,
              path: LeadBatchSearchResultWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadBatchSearchResultWidget(
                searchResults: params.getParam<dynamic>(
                  'searchResults',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: LeadSearchDeliveriesPageWidget.routeName,
              path: LeadSearchDeliveriesPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadSearchDeliveriesPageWidget(
                warehouseName: params.getParam(
                  'warehouseName',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: LeadDeliveriesSearchResultsWidget.routeName,
              path: LeadDeliveriesSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadDeliveriesSearchResultsWidget(
                deliveriesSearchResult: params.getParam<dynamic>(
                  'deliveriesSearchResult',
                  ParamType.JSON,
                  isList: true,
                ),
                totalResult: params.getParam(
                  'totalResult',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: SearchOnlineOrdersPageWidget.routeName,
              path: SearchOnlineOrdersPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SearchOnlineOrdersPageWidget(),
            ),
            FFRoute(
              name: OnlineOrdersSearchResultsWidget.routeName,
              path: OnlineOrdersSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => OnlineOrdersSearchResultsWidget(
                orderSearchResultJson: params.getParam<dynamic>(
                  'orderSearchResultJson',
                  ParamType.JSON,
                  isList: true,
                ),
                orderSearchStats: params.getParam<dynamic>(
                  'orderSearchStats',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: BatchDetailforSearchWidget.routeName,
              path: BatchDetailforSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BatchDetailforSearchWidget(
                batchId: params.getParam(
                  'batchId',
                  ParamType.String,
                ),
                searchResult: params.getParam<dynamic>(
                  'searchResult',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: SearchedDeliveryStatusPageWidget.routeName,
              path: SearchedDeliveryStatusPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'deliveryDocParam':
                    getDoc(['deliveries'], DeliveriesRecord.fromSnapshot),
              },
              builder: (context, params) => SearchedDeliveryStatusPageWidget(
                deliveryDocParam: params.getParam(
                  'deliveryDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: AdminSettingsPageWidget.routeName,
              path: AdminSettingsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminSettingsPageWidget(),
            ),
            FFRoute(
              name: VolListPageWidget.routeName,
              path: VolListPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'leadDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => VolListPageWidget(
                leadDocParam: params.getParam(
                  'leadDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: CreateBatchFilterOrdersPageWidget.routeName,
              path: CreateBatchFilterOrdersPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => CreateBatchFilterOrdersPageWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
                batchRef: params.getParam(
                  'batchRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['batches'],
                ),
              ),
            ),
            FFRoute(
              name: AdminSearchOnlineOrdersPageWidget.routeName,
              path: AdminSearchOnlineOrdersPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminSearchOnlineOrdersPageWidget(),
            ),
            FFRoute(
              name: AdminOnlineOrdersSearchResultsWidget.routeName,
              path: AdminOnlineOrdersSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  AdminOnlineOrdersSearchResultsWidget(
                orderSearchResultJson: params.getParam<dynamic>(
                  'orderSearchResultJson',
                  ParamType.JSON,
                  isList: true,
                ),
                orderSearchStats: params.getParam<dynamic>(
                  'orderSearchStats',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: DeliveredOnlineOrdersPageWidget.routeName,
              path: DeliveredOnlineOrdersPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DeliveredOnlineOrdersPageWidget(),
            ),
            FFRoute(
              name: WarehouseCurrentStockPageWidget.routeName,
              path: WarehouseCurrentStockPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WarehouseCurrentStockPageWidget(),
            ),
            FFRoute(
              name: SupportHomePageWidget.routeName,
              path: SupportHomePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SupportHomePageWidget(),
            ),
            FFRoute(
              name: SupportOrderSearchResultsWidget.routeName,
              path: SupportOrderSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SupportOrderSearchResultsWidget(
                orderSearchResultJson: params.getParam<dynamic>(
                  'orderSearchResultJson',
                  ParamType.JSON,
                  isList: true,
                ),
                orderSearchStats: params.getParam<dynamic>(
                  'orderSearchStats',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: SupportSearchOrdersPageWidget.routeName,
              path: SupportSearchOrdersPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SupportSearchOrdersPageWidget(),
            ),
            FFRoute(
              name: AdminAvailableStockPageWidget.routeName,
              path: AdminAvailableStockPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminAvailableStockPageWidget(),
            ),
            FFRoute(
              name: SelectWarehouseToAssignStockPageWidget.routeName,
              path: SelectWarehouseToAssignStockPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  SelectWarehouseToAssignStockPageWidget(
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AssignStockToWarehousePageWidget.routeName,
              path: AssignStockToWarehousePageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => AssignStockToWarehousePageWidget(
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AddStockToAdminProductWidget.routeName,
              path: AddStockToAdminProductWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddStockToAdminProductWidget(),
            ),
            FFRoute(
              name: UpdateAppVersionWidget.routeName,
              path: UpdateAppVersionWidget.routePath,
              requireAuth: true,
              builder: (context, params) => UpdateAppVersionWidget(),
            ),
            FFRoute(
              name: SupportSearchDeliveriesPageWidget.routeName,
              path: SupportSearchDeliveriesPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SupportSearchDeliveriesPageWidget(),
            ),
            FFRoute(
              name: SupportDeliveriesSearchResultsWidget.routeName,
              path: SupportDeliveriesSearchResultsWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  SupportDeliveriesSearchResultsWidget(
                deliveriesSearchResult: params.getParam<dynamic>(
                  'deliveriesSearchResult',
                  ParamType.JSON,
                  isList: true,
                ),
                resultFound: params.getParam(
                  'resultFound',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: LoginPageWidget.routeName,
              path: LoginPageWidget.routePath,
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: WelcomeLeadsPageWidget.routeName,
              path: WelcomeLeadsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WelcomeLeadsPageWidget(),
            ),
            FFRoute(
              name: NotAuthorizedPageWidget.routeName,
              path: NotAuthorizedPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NotAuthorizedPageWidget(),
            ),
            FFRoute(
              name: AssignWarehousePageWidget.routeName,
              path: AssignWarehousePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AssignWarehousePageWidget(),
            ),
            FFRoute(
              name: VolunteerDetectedPageWidget.routeName,
              path: VolunteerDetectedPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => VolunteerDetectedPageWidget(),
            ),
            FFRoute(
              name: AdminMoreSettingsPageWidget.routeName,
              path: AdminMoreSettingsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminMoreSettingsPageWidget(),
            ),
            FFRoute(
              name: AdminPaymentRequestDetailsPageWidget.routeName,
              path: AdminPaymentRequestDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'cashTansactionDocParam': getDoc(
                    ['cashTransactions'], CashTransactionsRecord.fromSnapshot),
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) =>
                  AdminPaymentRequestDetailsPageWidget(
                cashTansactionDocParam: params.getParam(
                  'cashTansactionDocParam',
                  ParamType.Document,
                ),
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: WarehousePageWidget.routeName,
              path: WarehousePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WarehousePageWidget(),
            ),
            FFRoute(
              name: DamageStockTypePageWidget.routeName,
              path: DamageStockTypePageWidget.routePath,
              builder: (context, params) => DamageStockTypePageWidget(),
            ),
            FFRoute(
              name: StockAllocationWidget.routeName,
              path: StockAllocationWidget.routePath,
              requireAuth: true,
              builder: (context, params) => StockAllocationWidget(
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SelectVolunteerPageWidget.routeName,
              path: SelectVolunteerPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SelectVolunteerPageWidget(
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: StockTransferTypePageWidget.routeName,
              path: StockTransferTypePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => StockTransferTypePageWidget(),
            ),
            FFRoute(
              name: LeadMoreSettingsPageWidget.routeName,
              path: LeadMoreSettingsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadMoreSettingsPageWidget(),
            ),
            FFRoute(
              name: LeadSettingsPageWidget.routeName,
              path: LeadSettingsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadSettingsPageWidget(),
            ),
            FFRoute(
              name: StockTypePageWidget.routeName,
              path: StockTypePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => StockTypePageWidget(),
            ),
            FFRoute(
              name: OnliineReceivedPageWidget.routeName,
              path: OnliineReceivedPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDoc': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => OnliineReceivedPageWidget(
                warehouseProductDoc: params.getParam(
                  'warehouseProductDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: OfflineReceivedPageWidget.routeName,
              path: OfflineReceivedPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDoc': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => OfflineReceivedPageWidget(
                warehouseProductDoc: params.getParam(
                  'warehouseProductDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: OfflineAssignedPageWidget.routeName,
              path: OfflineAssignedPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDocParam': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => OfflineAssignedPageWidget(
                warehouseProductDocParam: params.getParam(
                  'warehouseProductDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: OnlineAssignedPageWidget.routeName,
              path: OnlineAssignedPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDocParam': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => OnlineAssignedPageWidget(
                warehouseProductDocParam: params.getParam(
                  'warehouseProductDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: StockDeatlsPageWidget.routeName,
              path: StockDeatlsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => StockDeatlsPageWidget(
                transferType: params.getParam(
                  'transferType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: TransferStockPageWidget.routeName,
              path: TransferStockPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDoc': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => TransferStockPageWidget(
                transferType: params.getParam(
                  'transferType',
                  ParamType.String,
                ),
                warehouseProductDoc: params.getParam(
                  'warehouseProductDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: TransferredToOfflineWidget.routeName,
              path: TransferredToOfflineWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDoc': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => TransferredToOfflineWidget(
                warehouseProductDoc: params.getParam(
                  'warehouseProductDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: TransferredToOnlineWidget.routeName,
              path: TransferredToOnlineWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDoc': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => TransferredToOnlineWidget(
                warehouseProductDoc: params.getParam(
                  'warehouseProductDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ReturnedByVolunteerPageWidget.routeName,
              path: ReturnedByVolunteerPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDocParam': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => ReturnedByVolunteerPageWidget(
                warehouseProductDocParam: params.getParam(
                  'warehouseProductDocParam',
                  ParamType.Document,
                ),
                tabIndex: params.getParam(
                  'tabIndex',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: AssignStockToVolPagefromBatchWidget.routeName,
              path: AssignStockToVolPagefromBatchWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
                'batchDocParam':
                    getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => AssignStockToVolPagefromBatchWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
                batchDocParam: params.getParam(
                  'batchDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: LeadsProductsandPostcodesWidget.routeName,
              path: LeadsProductsandPostcodesWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'leadDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => LeadsProductsandPostcodesWidget(
                leadDocParam: params.getParam(
                  'leadDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SelectWarehouseToWithdrawStockPageWidget.routeName,
              path: SelectWarehouseToWithdrawStockPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  SelectWarehouseToWithdrawStockPageWidget(
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: WithdrawStockPageWidget.routeName,
              path: WithdrawStockPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'warehouseProductDoc': getDoc(['warehouse_products'],
                    WarehouseProductsRecord.fromSnapshot),
                'whDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => WithdrawStockPageWidget(
                stockType: params.getParam(
                  'stockType',
                  ParamType.String,
                ),
                warehouseProductDoc: params.getParam(
                  'warehouseProductDoc',
                  ParamType.Document,
                ),
                whDocParam: params.getParam(
                  'whDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: EmailLoginWidget.routeName,
              path: EmailLoginWidget.routePath,
              builder: (context, params) => EmailLoginWidget(),
            ),
            FFRoute(
              name: EmailSignUpPageWidget.routeName,
              path: EmailSignUpPageWidget.routePath,
              builder: (context, params) => EmailSignUpPageWidget(),
            ),
            FFRoute(
              name: ForgotPasswordPageWidget.routeName,
              path: ForgotPasswordPageWidget.routePath,
              builder: (context, params) => ForgotPasswordPageWidget(),
            ),
            FFRoute(
              name: PasswordResetConfirmPageWidget.routeName,
              path: PasswordResetConfirmPageWidget.routePath,
              builder: (context, params) => PasswordResetConfirmPageWidget(),
            ),
            FFRoute(
              name: LeadHomePageCopyWidget.routeName,
              path: LeadHomePageCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LeadHomePageCopyWidget(),
            ),
            FFRoute(
              name: ManualTransactionsWidget.routeName,
              path: ManualTransactionsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ManualTransactionsWidget(),
            ),
            FFRoute(
              name: FetchingDataWidget.routeName,
              path: FetchingDataWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FetchingDataWidget(),
            ),
            FFRoute(
              name: SelectWhPageWidget.routeName,
              path: SelectWhPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SelectWhPageWidget(),
            ),
            FFRoute(
              name: WhPostCodesPageWidget.routeName,
              path: WhPostCodesPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'whDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => WhPostCodesPageWidget(
                whDocParam: params.getParam(
                  'whDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: GetOrderPageWidget.routeName,
              path: GetOrderPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => GetOrderPageWidget(),
            ),
            FFRoute(
              name: DeletOrderPageWidget.routeName,
              path: DeletOrderPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'orderDocParam': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => DeletOrderPageWidget(
                orderDocParam: params.getParam(
                  'orderDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: DeliveredOrderDetailsPageWidget.routeName,
              path: DeliveredOrderDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'deliveryDocParam':
                    getDoc(['deliveries'], DeliveriesRecord.fromSnapshot),
              },
              builder: (context, params) => DeliveredOrderDetailsPageWidget(
                deliveryDocParam: params.getParam(
                  'deliveryDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: OrderDeliveryDetailsPageWidget.routeName,
              path: OrderDeliveryDetailsPageWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'orderDocParam': getDoc(['orders'], OrdersRecord.fromSnapshot),
                'deliveryDocParam':
                    getDoc(['deliveries'], DeliveriesRecord.fromSnapshot),
                'batchDocParam':
                    getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => OrderDeliveryDetailsPageWidget(
                orderDocParam: params.getParam(
                  'orderDocParam',
                  ParamType.Document,
                ),
                deliveryDocParam: params.getParam(
                  'deliveryDocParam',
                  ParamType.Document,
                ),
                batchDocParam: params.getParam(
                  'batchDocParam',
                  ParamType.Document,
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.black,
                  child: Image.asset(
                    'assets/images/Leads.jpg',
                    fit: BoxFit.contain,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
