import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
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
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'select_postcodes': ParameterData.none(),
  'update_profile': ParameterData.none(),
  'new_offline_sale': ParameterData.none(),
  'confirm_new_offline_sale': (data) async => ParameterData(
        allParams: {
          'offlineOrderRefParam':
              getParameter<DocumentReference>(data, 'offlineOrderRefParam'),
        },
      ),
  'offLine_order_details': (data) async => ParameterData(
        allParams: {
          'orderDoc': await getDocumentParameter<OrdersRecord>(
              data, 'orderDoc', OrdersRecord.fromSnapshot),
        },
      ),
  'volunteer_assigned_sucess': ParameterData.none(),
  'enter_otp': ParameterData.none(),
  'flash_screen': ParameterData.none(),
  'register': ParameterData.none(),
  'Login': ParameterData.none(),
  'forgot_password': ParameterData.none(),
  'password_reset_confirmation': ParameterData.none(),
  'lead_details': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'select_warehouse': (data) async => ParameterData(
        allParams: {
          'displayName': getParameter<String>(data, 'displayName'),
          'email': getParameter<String>(data, 'email'),
          'phoneNo': getParameter<String>(data, 'phoneNo'),
        },
      ),
  'user_list_lead': ParameterData.none(),
  'add_lead': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'displayName': getParameter<String>(data, 'displayName'),
          'phoneNo': getParameter<String>(data, 'phoneNo'),
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'notifications': ParameterData.none(),
  'userconfirmation': ParameterData.none(),
  'user_profile': ParameterData.none(),
  'inventory_admin': ParameterData.none(),
  'inventory_warehouse': ParameterData.none(),
  'item_details_warehouse': (data) async => ParameterData(
        allParams: {
          'whProductDocParam':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'whProductDocParam', WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'warehouse_list_filter': ParameterData.none(),
  'volunteer_Stock_details': (data) async => ParameterData(
        allParams: {
          'volunteerRefParam':
              getParameter<DocumentReference>(data, 'volunteerRefParam'),
        },
      ),
  'assign_stock_to_volunteer': (data) async => ParameterData(
        allParams: {
          'userDoc': await getDocumentParameter<UsersRecord>(
              data, 'userDoc', UsersRecord.fromSnapshot),
        },
      ),
  'stockWith_volunteer': (data) async => ParameterData(
        allParams: {
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'warehouse_detail': (data) async => ParameterData(
        allParams: {
          'warehouseRefParam':
              getParameter<DocumentReference>(data, 'warehouseRefParam'),
        },
      ),
  'warehouse_balanceStock': (data) async => ParameterData(
        allParams: {
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'damaged_goods_warehouse': (data) async => ParameterData(
        allParams: {
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'damaged_goods_volunteers': (data) async => ParameterData(
        allParams: {
          'volunteerDocParam': await getDocumentParameter<UsersRecord>(
              data, 'volunteerDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'postCodes_list': (data) async => ParameterData(
        allParams: {
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'unDamage_goods': (data) async => ParameterData(
        allParams: {
          'whDamagedProductDocParam':
              await getDocumentParameter<WhDamagedProductRecord>(
                  data,
                  'whDamagedProductDocParam',
                  WhDamagedProductRecord.fromSnapshot),
          'warehosueDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehosueDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'volunteer_list': (data) async => ParameterData(
        allParams: {
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'item_details_admin': (data) async => ParameterData(
        allParams: {
          'productDoc': await getDocumentParameter<ProductsRecord>(
              data, 'productDoc', ProductsRecord.fromSnapshot),
        },
      ),
  'item_details_volunteer': (data) async => ParameterData(
        allParams: {
          'volunteerProductDoc':
              await getDocumentParameter<VolunteerAssignedProductsRecord>(
                  data,
                  'volunteerProductDoc',
                  VolunteerAssignedProductsRecord.fromSnapshot),
        },
      ),
  'mark_damaged_goods': (data) async => ParameterData(
        allParams: {
          'volunteerProductsDocParam':
              await getDocumentParameter<VolunteerAssignedProductsRecord>(
                  data,
                  'volunteerProductsDocParam',
                  VolunteerAssignedProductsRecord.fromSnapshot),
          'productId': getParameter<String>(data, 'productId'),
        },
      ),
  'add_stock': (data) async => ParameterData(
        allParams: {
          'productDocParam': await getDocumentParameter<ProductsRecord>(
              data, 'productDocParam', ProductsRecord.fromSnapshot),
        },
      ),
  'filter_no_results': ParameterData.none(),
  'assign_stock_to_warehouse': (data) async => ParameterData(
        allParams: {
          'productDocParam': await getDocumentParameter<ProductsRecord>(
              data, 'productDocParam', ProductsRecord.fromSnapshot),
        },
      ),
  'route_planner': ParameterData.none(),
  'batch_list_warehouse': ParameterData.none(),
  'create_batch_confirmation': ParameterData.none(),
  'user_list_filter': ParameterData.none(),
  'DeliveryList_warehouse': (data) async => ParameterData(
        allParams: {
          'userRefParam': getParameter<DocumentReference>(data, 'userRefParam'),
          'orderDocParam': await getDocumentParameter<OrdersRecord>(
              data, 'orderDocParam', OrdersRecord.fromSnapshot),
        },
      ),
  'volunteer_delivery_list': (data) async => ParameterData(
        allParams: {
          'userRefParam': getParameter<DocumentReference>(data, 'userRefParam'),
        },
      ),
  'volunteer_pending_delivery_list': (data) async => ParameterData(
        allParams: {
          'userRefParam': getParameter<DocumentReference>(data, 'userRefParam'),
        },
      ),
  'online_orders_admin_new': ParameterData.none(),
  'online_orders_warehouse': ParameterData.none(),
  'order_list_filter': ParameterData.none(),
  'online_order_details': (data) async => ParameterData(
        allParams: {
          'orderDoc': await getDocumentParameter<OrdersRecord>(
              data, 'orderDoc', OrdersRecord.fromSnapshot),
        },
      ),
  'ApprovedPayments': (data) async => ParameterData(
        allParams: {
          'paymentRefParam':
              getParameter<DocumentReference>(data, 'paymentRefParam'),
        },
      ),
  'offline_order_payments_admin': ParameterData.none(),
  'offline_order_payments_lead': ParameterData.none(),
  'offline_order_payments_volunteer': ParameterData.none(),
  'offlineOrder_payments_Request_details': (data) async => ParameterData(
        allParams: {
          'paymentDocParam': await getDocumentParameter<PaymentsRecord>(
              data, 'paymentDocParam', PaymentsRecord.fromSnapshot),
        },
      ),
  'select_order_to_deposite': ParameterData.none(),
  'enter_payment_details': ParameterData.none(),
  'user_search': ParameterData.none(),
  'user_list_admin': ParameterData.none(),
  'wh_search': ParameterData.none(),
  'warehouse_list': ParameterData.none(),
  'home_admin': ParameterData.none(),
  'home_volunteer': ParameterData.none(),
  'home_lead': ParameterData.none(),
  'select_payments_to_deposite': ParameterData.none(),
  'volunteer_detail': (data) async => ParameterData(
        allParams: {
          'userRefParam': getParameter<DocumentReference>(data, 'userRefParam'),
        },
      ),
  'add_new_user': ParameterData.none(),
  'volunteer_list_assign_order': (data) async => ParameterData(
        allParams: {
          'orderDocParam': await getDocumentParameter<OrdersRecord>(
              data, 'orderDocParam', OrdersRecord.fromSnapshot),
        },
      ),
  'SelectOrdersForBatch': (data) async => ParameterData(
        allParams: {
          'batchDocParam': await getDocumentParameter<BatchesRecord>(
              data, 'batchDocParam', BatchesRecord.fromSnapshot),
          'firstPostCode': getParameter<String>(data, 'firstPostCode'),
        },
      ),
  'batchDetails': (data) async => ParameterData(
        allParams: {
          'batchRefParam':
              getParameter<DocumentReference>(data, 'batchRefParam'),
        },
      ),
  'online_order_details_tabbed': (data) async => ParameterData(
        allParams: {
          'orderDoc': await getDocumentParameter<OrdersRecord>(
              data, 'orderDoc', OrdersRecord.fromSnapshot),
        },
      ),
  'batch_warehouse_volunteer_list': ParameterData.none(),
  'online_orders_volunteers': ParameterData.none(),
  'newDeliveryDetails': (data) async => ParameterData(
        allParams: {
          'deliveryRefParam':
              getParameter<DocumentReference>(data, 'deliveryRefParam'),
        },
      ),
  'searchTesting': ParameterData.none(),
  'offline_sales_volunteers_outstanding': ParameterData.none(),
  'online_orders_warehouse_new': ParameterData.none(),
  'online_orders_warehouse_assigned': ParameterData.none(),
  'online_orders_warehouse_delivered': ParameterData.none(),
  'batch_list_volunteer': ParameterData.none(),
  'online_orders_volunteer_pending': ParameterData.none(),
  'online_orders_volunteer_delivered': ParameterData.none(),
  'batch_select_volunteer_postcodes': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'get_batch_details_admin': ParameterData.none(),
  'delivery_list_admin': (data) async => ParameterData(
        allParams: {
          'batchNumber': getParameter<String>(data, 'batchNumber'),
        },
      ),
  'adjust_deliveries_warehouse': (data) async => ParameterData(
        allParams: {
          'batchDocParam': await getDocumentParameter<BatchesRecord>(
              data, 'batchDocParam', BatchesRecord.fromSnapshot),
        },
      ),
  'select_items_for_offline_sale': (data) async => ParameterData(
        allParams: {
          'offlineOrderRefParam':
              getParameter<DocumentReference>(data, 'offlineOrderRefParam'),
        },
      ),
  'offline_sales_volunteers_recentlyPaid': ParameterData.none(),
  'search_users_warehouse': ParameterData.none(),
  'order_list_filterCopy': ParameterData.none(),
  'delivery_list_filter_warehouse': ParameterData.none(),
  'delivery_list_filter_volunteers': ParameterData.none(),
  'order_list_filter_admin': ParameterData.none(),
  'online_orders_admin_assigned': ParameterData.none(),
  'online_orders_admin_delivered': ParameterData.none(),
  'delivery_list_filter_leads': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
