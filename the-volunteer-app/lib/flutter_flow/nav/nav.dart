import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_theme.dart';
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
          appStateNotifier.loggedIn ? HomeLeadWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeLeadWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: SelectPostcodesWidget.routeName,
              path: SelectPostcodesWidget.routePath,
              builder: (context, params) => SelectPostcodesWidget(),
            ),
            FFRoute(
              name: UpdateProfileWidget.routeName,
              path: UpdateProfileWidget.routePath,
              builder: (context, params) => UpdateProfileWidget(),
            ),
            FFRoute(
              name: NewOfflineSaleWidget.routeName,
              path: NewOfflineSaleWidget.routePath,
              builder: (context, params) => NewOfflineSaleWidget(),
            ),
            FFRoute(
              name: ConfirmNewOfflineSaleWidget.routeName,
              path: ConfirmNewOfflineSaleWidget.routePath,
              builder: (context, params) => ConfirmNewOfflineSaleWidget(
                offlineOrderRefParam: params.getParam(
                  'offlineOrderRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['orders'],
                ),
              ),
            ),
            FFRoute(
              name: OffLineOrderDetailsWidget.routeName,
              path: OffLineOrderDetailsWidget.routePath,
              asyncParams: {
                'orderDoc': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => OffLineOrderDetailsWidget(
                orderDoc: params.getParam(
                  'orderDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: VolunteerAssignedSucessWidget.routeName,
              path: VolunteerAssignedSucessWidget.routePath,
              builder: (context, params) => VolunteerAssignedSucessWidget(),
            ),
            FFRoute(
              name: EnterOtpWidget.routeName,
              path: EnterOtpWidget.routePath,
              builder: (context, params) => EnterOtpWidget(),
            ),
            FFRoute(
              name: FlashScreenWidget.routeName,
              path: FlashScreenWidget.routePath,
              builder: (context, params) => FlashScreenWidget(),
            ),
            FFRoute(
              name: RegisterWidget.routeName,
              path: RegisterWidget.routePath,
              builder: (context, params) => RegisterWidget(),
            ),
            FFRoute(
              name: LoginWidget.routeName,
              path: LoginWidget.routePath,
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: ForgotPasswordWidget.routeName,
              path: ForgotPasswordWidget.routePath,
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: PasswordResetConfirmationWidget.routeName,
              path: PasswordResetConfirmationWidget.routePath,
              builder: (context, params) => PasswordResetConfirmationWidget(),
            ),
            FFRoute(
              name: LeadDetailsWidget.routeName,
              path: LeadDetailsWidget.routePath,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => LeadDetailsWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SelectWarehouseWidget.routeName,
              path: SelectWarehouseWidget.routePath,
              builder: (context, params) => SelectWarehouseWidget(
                displayName: params.getParam(
                  'displayName',
                  ParamType.String,
                ),
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
                phoneNo: params.getParam(
                  'phoneNo',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: UserListLeadWidget.routeName,
              path: UserListLeadWidget.routePath,
              builder: (context, params) => UserListLeadWidget(),
            ),
            FFRoute(
              name: AddLeadWidget.routeName,
              path: AddLeadWidget.routePath,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => AddLeadWidget(
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
                displayName: params.getParam(
                  'displayName',
                  ParamType.String,
                ),
                phoneNo: params.getParam(
                  'phoneNo',
                  ParamType.String,
                ),
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: NotificationsWidget.routeName,
              path: NotificationsWidget.routePath,
              builder: (context, params) => NotificationsWidget(),
            ),
            FFRoute(
              name: UserconfirmationWidget.routeName,
              path: UserconfirmationWidget.routePath,
              builder: (context, params) => UserconfirmationWidget(),
            ),
            FFRoute(
              name: UserProfileWidget.routeName,
              path: UserProfileWidget.routePath,
              builder: (context, params) => UserProfileWidget(),
            ),
            FFRoute(
              name: InventoryAdminWidget.routeName,
              path: InventoryAdminWidget.routePath,
              builder: (context, params) => InventoryAdminWidget(),
            ),
            FFRoute(
              name: InventoryWarehouseWidget.routeName,
              path: InventoryWarehouseWidget.routePath,
              builder: (context, params) => InventoryWarehouseWidget(),
            ),
            FFRoute(
              name: ItemDetailsWarehouseWidget.routeName,
              path: ItemDetailsWarehouseWidget.routePath,
              asyncParams: {
                'whProductDocParam': getDoc(['warehouses', 'warehouseProducts'],
                    WarehouseProductsRecord.fromSnapshot),
              },
              builder: (context, params) => ItemDetailsWarehouseWidget(
                whProductDocParam: params.getParam(
                  'whProductDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: WarehouseListFilterWidget.routeName,
              path: WarehouseListFilterWidget.routePath,
              builder: (context, params) => WarehouseListFilterWidget(),
            ),
            FFRoute(
              name: VolunteerStockDetailsWidget.routeName,
              path: VolunteerStockDetailsWidget.routePath,
              builder: (context, params) => VolunteerStockDetailsWidget(
                volunteerRefParam: params.getParam(
                  'volunteerRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AssignStockToVolunteerWidget.routeName,
              path: AssignStockToVolunteerWidget.routePath,
              asyncParams: {
                'userDoc': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AssignStockToVolunteerWidget(
                userDoc: params.getParam(
                  'userDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: StockWithVolunteerWidget.routeName,
              path: StockWithVolunteerWidget.routePath,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => StockWithVolunteerWidget(
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: WarehouseDetailWidget.routeName,
              path: WarehouseDetailWidget.routePath,
              builder: (context, params) => WarehouseDetailWidget(
                warehouseRefParam: params.getParam(
                  'warehouseRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['warehouses'],
                ),
              ),
            ),
            FFRoute(
              name: WarehouseBalanceStockWidget.routeName,
              path: WarehouseBalanceStockWidget.routePath,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => WarehouseBalanceStockWidget(
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: DamagedGoodsWarehouseWidget.routeName,
              path: DamagedGoodsWarehouseWidget.routePath,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => DamagedGoodsWarehouseWidget(
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: DamagedGoodsVolunteersWidget.routeName,
              path: DamagedGoodsVolunteersWidget.routePath,
              asyncParams: {
                'volunteerDocParam':
                    getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => DamagedGoodsVolunteersWidget(
                volunteerDocParam: params.getParam(
                  'volunteerDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: PostCodesListWidget.routeName,
              path: PostCodesListWidget.routePath,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => PostCodesListWidget(
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: UnDamageGoodsWidget.routeName,
              path: UnDamageGoodsWidget.routePath,
              asyncParams: {
                'whDamagedProductDocParam': getDoc(
                    ['warehouses', 'wh_damagedProduct'],
                    WhDamagedProductRecord.fromSnapshot),
                'warehosueDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => UnDamageGoodsWidget(
                whDamagedProductDocParam: params.getParam(
                  'whDamagedProductDocParam',
                  ParamType.Document,
                ),
                warehosueDocParam: params.getParam(
                  'warehosueDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: VolunteerListWidget.routeName,
              path: VolunteerListWidget.routePath,
              asyncParams: {
                'warehouseDocParam':
                    getDoc(['warehouses'], WarehousesRecord.fromSnapshot),
              },
              builder: (context, params) => VolunteerListWidget(
                warehouseDocParam: params.getParam(
                  'warehouseDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ItemDetailsAdminWidget.routeName,
              path: ItemDetailsAdminWidget.routePath,
              asyncParams: {
                'productDoc': getDoc(['products'], ProductsRecord.fromSnapshot),
              },
              builder: (context, params) => ItemDetailsAdminWidget(
                productDoc: params.getParam(
                  'productDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ItemDetailsVolunteerWidget.routeName,
              path: ItemDetailsVolunteerWidget.routePath,
              asyncParams: {
                'volunteerProductDoc': getDoc(
                    ['users', 'volunteer_assignedProducts'],
                    VolunteerAssignedProductsRecord.fromSnapshot),
              },
              builder: (context, params) => ItemDetailsVolunteerWidget(
                volunteerProductDoc: params.getParam(
                  'volunteerProductDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: MarkDamagedGoodsWidget.routeName,
              path: MarkDamagedGoodsWidget.routePath,
              asyncParams: {
                'volunteerProductsDocParam': getDoc(
                    ['users', 'volunteer_assignedProducts'],
                    VolunteerAssignedProductsRecord.fromSnapshot),
              },
              builder: (context, params) => MarkDamagedGoodsWidget(
                volunteerProductsDocParam: params.getParam(
                  'volunteerProductsDocParam',
                  ParamType.Document,
                ),
                productId: params.getParam(
                  'productId',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AddStockWidget.routeName,
              path: AddStockWidget.routePath,
              asyncParams: {
                'productDocParam':
                    getDoc(['products'], ProductsRecord.fromSnapshot),
              },
              builder: (context, params) => AddStockWidget(
                productDocParam: params.getParam(
                  'productDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: FilterNoResultsWidget.routeName,
              path: FilterNoResultsWidget.routePath,
              builder: (context, params) => FilterNoResultsWidget(),
            ),
            FFRoute(
              name: AssignStockToWarehouseWidget.routeName,
              path: AssignStockToWarehouseWidget.routePath,
              asyncParams: {
                'productDocParam':
                    getDoc(['products'], ProductsRecord.fromSnapshot),
              },
              builder: (context, params) => AssignStockToWarehouseWidget(
                productDocParam: params.getParam(
                  'productDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: RoutePlannerWidget.routeName,
              path: RoutePlannerWidget.routePath,
              builder: (context, params) => RoutePlannerWidget(),
            ),
            FFRoute(
              name: BatchListWarehouseWidget.routeName,
              path: BatchListWarehouseWidget.routePath,
              builder: (context, params) => BatchListWarehouseWidget(),
            ),
            FFRoute(
              name: CreateBatchConfirmationWidget.routeName,
              path: CreateBatchConfirmationWidget.routePath,
              builder: (context, params) => CreateBatchConfirmationWidget(),
            ),
            FFRoute(
              name: UserListFilterWidget.routeName,
              path: UserListFilterWidget.routePath,
              builder: (context, params) => UserListFilterWidget(),
            ),
            FFRoute(
              name: DeliveryListWarehouseWidget.routeName,
              path: DeliveryListWarehouseWidget.routePath,
              asyncParams: {
                'orderDocParam': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => DeliveryListWarehouseWidget(
                userRefParam: params.getParam(
                  'userRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                orderDocParam: params.getParam(
                  'orderDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: VolunteerDeliveryListWidget.routeName,
              path: VolunteerDeliveryListWidget.routePath,
              builder: (context, params) => VolunteerDeliveryListWidget(
                userRefParam: params.getParam(
                  'userRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: VolunteerPendingDeliveryListWidget.routeName,
              path: VolunteerPendingDeliveryListWidget.routePath,
              builder: (context, params) => VolunteerPendingDeliveryListWidget(
                userRefParam: params.getParam(
                  'userRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: OnlineOrdersAdminNewWidget.routeName,
              path: OnlineOrdersAdminNewWidget.routePath,
              builder: (context, params) => OnlineOrdersAdminNewWidget(),
            ),
            FFRoute(
              name: OnlineOrdersWarehouseWidget.routeName,
              path: OnlineOrdersWarehouseWidget.routePath,
              builder: (context, params) => OnlineOrdersWarehouseWidget(),
            ),
            FFRoute(
              name: OrderListFilterWidget.routeName,
              path: OrderListFilterWidget.routePath,
              builder: (context, params) => OrderListFilterWidget(),
            ),
            FFRoute(
              name: OnlineOrderDetailsWidget.routeName,
              path: OnlineOrderDetailsWidget.routePath,
              asyncParams: {
                'orderDoc': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => OnlineOrderDetailsWidget(
                orderDoc: params.getParam(
                  'orderDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ApprovedPaymentsWidget.routeName,
              path: ApprovedPaymentsWidget.routePath,
              builder: (context, params) => ApprovedPaymentsWidget(
                paymentRefParam: params.getParam(
                  'paymentRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['payments'],
                ),
              ),
            ),
            FFRoute(
              name: OfflineOrderPaymentsAdminWidget.routeName,
              path: OfflineOrderPaymentsAdminWidget.routePath,
              builder: (context, params) => OfflineOrderPaymentsAdminWidget(),
            ),
            FFRoute(
              name: OfflineOrderPaymentsLeadWidget.routeName,
              path: OfflineOrderPaymentsLeadWidget.routePath,
              builder: (context, params) => OfflineOrderPaymentsLeadWidget(),
            ),
            FFRoute(
              name: OfflineOrderPaymentsVolunteerWidget.routeName,
              path: OfflineOrderPaymentsVolunteerWidget.routePath,
              builder: (context, params) =>
                  OfflineOrderPaymentsVolunteerWidget(),
            ),
            FFRoute(
              name: OfflineOrderPaymentsRequestDetailsWidget.routeName,
              path: OfflineOrderPaymentsRequestDetailsWidget.routePath,
              asyncParams: {
                'paymentDocParam':
                    getDoc(['payments'], PaymentsRecord.fromSnapshot),
              },
              builder: (context, params) =>
                  OfflineOrderPaymentsRequestDetailsWidget(
                paymentDocParam: params.getParam(
                  'paymentDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SelectOrderToDepositeWidget.routeName,
              path: SelectOrderToDepositeWidget.routePath,
              builder: (context, params) => SelectOrderToDepositeWidget(),
            ),
            FFRoute(
              name: EnterPaymentDetailsWidget.routeName,
              path: EnterPaymentDetailsWidget.routePath,
              builder: (context, params) => EnterPaymentDetailsWidget(),
            ),
            FFRoute(
              name: UserSearchWidget.routeName,
              path: UserSearchWidget.routePath,
              builder: (context, params) => UserSearchWidget(),
            ),
            FFRoute(
              name: UserListAdminWidget.routeName,
              path: UserListAdminWidget.routePath,
              builder: (context, params) => UserListAdminWidget(),
            ),
            FFRoute(
              name: WhSearchWidget.routeName,
              path: WhSearchWidget.routePath,
              builder: (context, params) => WhSearchWidget(),
            ),
            FFRoute(
              name: WarehouseListWidget.routeName,
              path: WarehouseListWidget.routePath,
              builder: (context, params) => WarehouseListWidget(),
            ),
            FFRoute(
              name: HomeAdminWidget.routeName,
              path: HomeAdminWidget.routePath,
              builder: (context, params) => HomeAdminWidget(),
            ),
            FFRoute(
              name: HomeVolunteerWidget.routeName,
              path: HomeVolunteerWidget.routePath,
              builder: (context, params) => HomeVolunteerWidget(),
            ),
            FFRoute(
              name: HomeLeadWidget.routeName,
              path: HomeLeadWidget.routePath,
              builder: (context, params) => HomeLeadWidget(),
            ),
            FFRoute(
              name: SelectPaymentsToDepositeWidget.routeName,
              path: SelectPaymentsToDepositeWidget.routePath,
              builder: (context, params) => SelectPaymentsToDepositeWidget(),
            ),
            FFRoute(
              name: VolunteerDetailWidget.routeName,
              path: VolunteerDetailWidget.routePath,
              builder: (context, params) => VolunteerDetailWidget(
                userRefParam: params.getParam(
                  'userRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AddNewUserWidget.routeName,
              path: AddNewUserWidget.routePath,
              builder: (context, params) => AddNewUserWidget(),
            ),
            FFRoute(
              name: VolunteerListAssignOrderWidget.routeName,
              path: VolunteerListAssignOrderWidget.routePath,
              asyncParams: {
                'orderDocParam': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => VolunteerListAssignOrderWidget(
                orderDocParam: params.getParam(
                  'orderDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SelectOrdersForBatchWidget.routeName,
              path: SelectOrdersForBatchWidget.routePath,
              asyncParams: {
                'batchDocParam':
                    getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => SelectOrdersForBatchWidget(
                batchDocParam: params.getParam(
                  'batchDocParam',
                  ParamType.Document,
                ),
                firstPostCode: params.getParam(
                  'firstPostCode',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: BatchDetailsWidget.routeName,
              path: BatchDetailsWidget.routePath,
              builder: (context, params) => BatchDetailsWidget(
                batchRefParam: params.getParam(
                  'batchRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['batches'],
                ),
              ),
            ),
            FFRoute(
              name: OnlineOrderDetailsTabbedWidget.routeName,
              path: OnlineOrderDetailsTabbedWidget.routePath,
              asyncParams: {
                'orderDoc': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => OnlineOrderDetailsTabbedWidget(
                orderDoc: params.getParam(
                  'orderDoc',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: BatchWarehouseVolunteerListWidget.routeName,
              path: BatchWarehouseVolunteerListWidget.routePath,
              builder: (context, params) => BatchWarehouseVolunteerListWidget(),
            ),
            FFRoute(
              name: OnlineOrdersVolunteersWidget.routeName,
              path: OnlineOrdersVolunteersWidget.routePath,
              builder: (context, params) => OnlineOrdersVolunteersWidget(),
            ),
            FFRoute(
              name: NewDeliveryDetailsWidget.routeName,
              path: NewDeliveryDetailsWidget.routePath,
              builder: (context, params) => NewDeliveryDetailsWidget(
                deliveryRefParam: params.getParam(
                  'deliveryRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['deliveries'],
                ),
              ),
            ),
            FFRoute(
              name: SearchTestingWidget.routeName,
              path: SearchTestingWidget.routePath,
              builder: (context, params) => SearchTestingWidget(),
            ),
            FFRoute(
              name: OfflineSalesVolunteersOutstandingWidget.routeName,
              path: OfflineSalesVolunteersOutstandingWidget.routePath,
              builder: (context, params) =>
                  OfflineSalesVolunteersOutstandingWidget(),
            ),
            FFRoute(
              name: OnlineOrdersWarehouseNewWidget.routeName,
              path: OnlineOrdersWarehouseNewWidget.routePath,
              builder: (context, params) => OnlineOrdersWarehouseNewWidget(),
            ),
            FFRoute(
              name: OnlineOrdersWarehouseAssignedWidget.routeName,
              path: OnlineOrdersWarehouseAssignedWidget.routePath,
              builder: (context, params) =>
                  OnlineOrdersWarehouseAssignedWidget(),
            ),
            FFRoute(
              name: OnlineOrdersWarehouseDeliveredWidget.routeName,
              path: OnlineOrdersWarehouseDeliveredWidget.routePath,
              builder: (context, params) =>
                  OnlineOrdersWarehouseDeliveredWidget(),
            ),
            FFRoute(
              name: BatchListVolunteerWidget.routeName,
              path: BatchListVolunteerWidget.routePath,
              builder: (context, params) => BatchListVolunteerWidget(),
            ),
            FFRoute(
              name: OnlineOrdersVolunteerPendingWidget.routeName,
              path: OnlineOrdersVolunteerPendingWidget.routePath,
              builder: (context, params) =>
                  OnlineOrdersVolunteerPendingWidget(),
            ),
            FFRoute(
              name: OnlineOrdersVolunteerDeliveredWidget.routeName,
              path: OnlineOrdersVolunteerDeliveredWidget.routePath,
              builder: (context, params) =>
                  OnlineOrdersVolunteerDeliveredWidget(),
            ),
            FFRoute(
              name: BatchSelectVolunteerPostcodesWidget.routeName,
              path: BatchSelectVolunteerPostcodesWidget.routePath,
              asyncParams: {
                'userDocParam': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => BatchSelectVolunteerPostcodesWidget(
                userDocParam: params.getParam(
                  'userDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: GetBatchDetailsAdminWidget.routeName,
              path: GetBatchDetailsAdminWidget.routePath,
              builder: (context, params) => GetBatchDetailsAdminWidget(),
            ),
            FFRoute(
              name: DeliveryListAdminWidget.routeName,
              path: DeliveryListAdminWidget.routePath,
              builder: (context, params) => DeliveryListAdminWidget(
                batchNumber: params.getParam(
                  'batchNumber',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AdjustDeliveriesWarehouseWidget.routeName,
              path: AdjustDeliveriesWarehouseWidget.routePath,
              asyncParams: {
                'batchDocParam':
                    getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => AdjustDeliveriesWarehouseWidget(
                batchDocParam: params.getParam(
                  'batchDocParam',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SelectItemsForOfflineSaleWidget.routeName,
              path: SelectItemsForOfflineSaleWidget.routePath,
              builder: (context, params) => SelectItemsForOfflineSaleWidget(
                offlineOrderRefParam: params.getParam(
                  'offlineOrderRefParam',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['orders'],
                ),
              ),
            ),
            FFRoute(
              name: OfflineSalesVolunteersRecentlyPaidWidget.routeName,
              path: OfflineSalesVolunteersRecentlyPaidWidget.routePath,
              builder: (context, params) =>
                  OfflineSalesVolunteersRecentlyPaidWidget(),
            ),
            FFRoute(
              name: SearchUsersWarehouseWidget.routeName,
              path: SearchUsersWarehouseWidget.routePath,
              builder: (context, params) => SearchUsersWarehouseWidget(),
            ),
            FFRoute(
              name: OrderListFilterCopyWidget.routeName,
              path: OrderListFilterCopyWidget.routePath,
              builder: (context, params) => OrderListFilterCopyWidget(),
            ),
            FFRoute(
              name: DeliveryListFilterWarehouseWidget.routeName,
              path: DeliveryListFilterWarehouseWidget.routePath,
              builder: (context, params) => DeliveryListFilterWarehouseWidget(),
            ),
            FFRoute(
              name: DeliveryListFilterVolunteersWidget.routeName,
              path: DeliveryListFilterVolunteersWidget.routePath,
              builder: (context, params) =>
                  DeliveryListFilterVolunteersWidget(),
            ),
            FFRoute(
              name: OrderListFilterAdminWidget.routeName,
              path: OrderListFilterAdminWidget.routePath,
              builder: (context, params) => OrderListFilterAdminWidget(),
            ),
            FFRoute(
              name: OnlineOrdersAdminAssignedWidget.routeName,
              path: OnlineOrdersAdminAssignedWidget.routePath,
              builder: (context, params) => OnlineOrdersAdminAssignedWidget(),
            ),
            FFRoute(
              name: OnlineOrdersAdminDeliveredWidget.routeName,
              path: OnlineOrdersAdminDeliveredWidget.routePath,
              builder: (context, params) => OnlineOrdersAdminDeliveredWidget(),
            ),
            FFRoute(
              name: DeliveryListFilterLeadsWidget.routeName,
              path: DeliveryListFilterLeadsWidget.routePath,
              builder: (context, params) => DeliveryListFilterLeadsWidget(),
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
            return '/login';
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
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/favicon.png',
                      width: 150.0,
                      fit: BoxFit.contain,
                    ),
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
