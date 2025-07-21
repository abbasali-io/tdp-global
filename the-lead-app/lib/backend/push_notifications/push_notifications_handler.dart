import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
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
          color: Colors.black,
          child: Image.asset(
            'assets/images/Leads.jpg',
            fit: BoxFit.contain,
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
  'warehouseUsersListPage': ParameterData.none(),
  'user_profile': ParameterData.none(),
  'assignStockToVolPage': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'warehousePostcodesPage': ParameterData.none(),
  'batchListPage': ParameterData.none(),
  'createBatchSelectVolPage': ParameterData.none(),
  'newOnlineOrdersPage': ParameterData.none(),
  'batchDetailPage': (data) async => ParameterData(
        allParams: {
          'batchDocParam': await getDocumentParameter<BatchesRecord>(
              data, 'batchDocParam', BatchesRecord.fromSnapshot),
        },
      ),
  'onlineOrdersDetailsPage': (data) async => ParameterData(
        allParams: {
          'orderDocParam': await getDocumentParameter<OrdersRecord>(
              data, 'orderDocParam', OrdersRecord.fromSnapshot),
        },
      ),
  'volunteerStockPage': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'warehouseDamagedProductsPage': (data) async => ParameterData(
        allParams: {
          'tabIndex': getParameter<int>(data, 'tabIndex'),
        },
      ),
  'completedDeliveriesPage': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'markProductDamagedPage': (data) async => ParameterData(
        allParams: {
          'warehouseProductDcoParam':
              await getDocumentParameter<WarehouseProductsRecord>(
                  data,
                  'warehouseProductDcoParam',
                  WarehouseProductsRecord.fromSnapshot),
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'approvedPaymentsPage': ParameterData.none(),
  'pendingPaymentDetailsPage': (data) async => ParameterData(
        allParams: {
          'cashTansactionDocParam':
              await getDocumentParameter<CashTransactionsRecord>(
                  data,
                  'cashTansactionDocParam',
                  CashTransactionsRecord.fromSnapshot),
        },
      ),
  'approvedPaymentDetailsPage': (data) async => ParameterData(
        allParams: {
          'cashTansactionDocParam':
              await getDocumentParameter<CashTransactionsRecord>(
                  data,
                  'cashTansactionDocParam',
                  CashTransactionsRecord.fromSnapshot),
        },
      ),
  'bootstrapPage': ParameterData.none(),
  'leadHomePage': ParameterData.none(),
  'adminHomePage': ParameterData.none(),
  'PendingPaymentsPage': ParameterData.none(),
  'paymentRequestsPage': ParameterData.none(),
  'PaymentRequestDetailsPage': (data) async => ParameterData(
        allParams: {
          'cashTansactionDocParam':
              await getDocumentParameter<CashTransactionsRecord>(
                  data,
                  'cashTansactionDocParam',
                  CashTransactionsRecord.fromSnapshot),
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'adminPaymentRequestsPage': ParameterData.none(),
  'paymentsReceivedPage': ParameterData.none(),
  'receivedPaymentDetailsPage': (data) async => ParameterData(
        allParams: {
          'cashTansactionDocParam':
              await getDocumentParameter<CashTransactionsRecord>(
                  data,
                  'cashTansactionDocParam',
                  CashTransactionsRecord.fromSnapshot),
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'paymentReceivedLeadPage': ParameterData.none(),
  'PaymentReceivedLeadDetailsPage': (data) async => ParameterData(
        allParams: {
          'cashTansactionDocParam':
              await getDocumentParameter<CashTransactionsRecord>(
                  data,
                  'cashTansactionDocParam',
                  CashTransactionsRecord.fromSnapshot),
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'PendDeliveriesPage': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'leadsListPage': ParameterData.none(),
  'selectWarehousePage': (data) async => ParameterData(
        allParams: {
          'leadDocParam': await getDocumentParameter<UsersRecord>(
              data, 'leadDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'adminSecretKeyPage': ParameterData.none(),
  'assignedOnlineOrdersPage': ParameterData.none(),
  'adminSearchPaymentsPage': ParameterData.none(),
  'adminPaymentSearchResults': ParameterData.none(),
  'leadMakePaymentPage': ParameterData.none(),
  'leadSearchPaymentsPage': ParameterData.none(),
  'leadPaymentSearchResults': ParameterData.none(),
  'leadSearchBatchPage': ParameterData.none(),
  'leadBatchSearchResult': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'leadSearchDeliveriesPage': (data) async => ParameterData(
        allParams: {
          'warehouseName': getParameter<String>(data, 'warehouseName'),
        },
      ),
  'leadDeliveriesSearchResults': (data) async => ParameterData(
        allParams: {
          'totalResult': getParameter<int>(data, 'totalResult'),
        },
      ),
  'searchOnlineOrdersPage': ParameterData.none(),
  'onlineOrdersSearchResults': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'batchDetailforSearch': (data) async => ParameterData(
        allParams: {
          'batchId': getParameter<String>(data, 'batchId'),
        },
      ),
  'searchedDeliveryStatusPage': (data) async => ParameterData(
        allParams: {
          'deliveryDocParam': await getDocumentParameter<DeliveriesRecord>(
              data, 'deliveryDocParam', DeliveriesRecord.fromSnapshot),
        },
      ),
  'adminSettingsPage': ParameterData.none(),
  'volListPage': (data) async => ParameterData(
        allParams: {
          'leadDocParam': await getDocumentParameter<UsersRecord>(
              data, 'leadDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'createBatchFilterOrdersPage': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
          'batchRef': getParameter<DocumentReference>(data, 'batchRef'),
        },
      ),
  'admin_searchOnlineOrdersPage': ParameterData.none(),
  'admin_onlineOrdersSearchResults': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'deliveredOnlineOrdersPage': ParameterData.none(),
  'warehouseCurrentStockPage': ParameterData.none(),
  'supportHomePage': ParameterData.none(),
  'supportOrderSearchResults': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'supportSearchOrdersPage': ParameterData.none(),
  'adminAvailableStockPage': ParameterData.none(),
  'selectWarehouseToAssignStockPage': (data) async => ParameterData(
        allParams: {
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'assignStockToWarehousePage': (data) async => ParameterData(
        allParams: {
          'warehouseDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'warehouseDocParam', WarehousesRecord.fromSnapshot),
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'addStockToAdminProduct': ParameterData.none(),
  'updateAppVersion': ParameterData.none(),
  'SupportSearchDeliveriesPage': ParameterData.none(),
  'SupportDeliveriesSearchResults': (data) async => ParameterData(
        allParams: {
          'resultFound': getParameter<int>(data, 'resultFound'),
        },
      ),
  'loginPage': ParameterData.none(),
  'WelcomeLeadsPage': ParameterData.none(),
  'notAuthorizedPage': ParameterData.none(),
  'assignWarehousePage': ParameterData.none(),
  'volunteerDetectedPage': ParameterData.none(),
  'adminMoreSettingsPage': ParameterData.none(),
  'adminPaymentRequestDetailsPage': (data) async => ParameterData(
        allParams: {
          'cashTansactionDocParam':
              await getDocumentParameter<CashTransactionsRecord>(
                  data,
                  'cashTansactionDocParam',
                  CashTransactionsRecord.fromSnapshot),
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'warehousePage': ParameterData.none(),
  'damage_stockTypePage': ParameterData.none(),
  'StockAllocation': (data) async => ParameterData(
        allParams: {
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'selectVolunteerPage': (data) async => ParameterData(
        allParams: {
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'StockTransferTypePage': ParameterData.none(),
  'leadMoreSettingsPage': ParameterData.none(),
  'leadSettingsPage': ParameterData.none(),
  'StockTypePage': ParameterData.none(),
  'onliineReceivedPage': (data) async => ParameterData(
        allParams: {
          'warehouseProductDoc':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'warehouseProductDoc', WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'offlineReceivedPage': (data) async => ParameterData(
        allParams: {
          'warehouseProductDoc':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'warehouseProductDoc', WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'offlineAssignedPage': (data) async => ParameterData(
        allParams: {
          'warehouseProductDocParam':
              await getDocumentParameter<WarehouseProductsRecord>(
                  data,
                  'warehouseProductDocParam',
                  WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'onlineAssignedPage': (data) async => ParameterData(
        allParams: {
          'warehouseProductDocParam':
              await getDocumentParameter<WarehouseProductsRecord>(
                  data,
                  'warehouseProductDocParam',
                  WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'StockDeatlsPage': (data) async => ParameterData(
        allParams: {
          'transferType': getParameter<String>(data, 'transferType'),
        },
      ),
  'transferStockPage': (data) async => ParameterData(
        allParams: {
          'transferType': getParameter<String>(data, 'transferType'),
          'warehouseProductDoc':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'warehouseProductDoc', WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'transferredToOffline': (data) async => ParameterData(
        allParams: {
          'warehouseProductDoc':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'warehouseProductDoc', WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'transferredToOnline': (data) async => ParameterData(
        allParams: {
          'warehouseProductDoc':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'warehouseProductDoc', WarehouseProductsRecord.fromSnapshot),
        },
      ),
  'returnedByVolunteerPage': (data) async => ParameterData(
        allParams: {
          'warehouseProductDocParam':
              await getDocumentParameter<WarehouseProductsRecord>(
                  data,
                  'warehouseProductDocParam',
                  WarehouseProductsRecord.fromSnapshot),
          'tabIndex': getParameter<int>(data, 'tabIndex'),
        },
      ),
  'assignStockToVolPagefromBatch': (data) async => ParameterData(
        allParams: {
          'userDocParam': await getDocumentParameter<UsersRecord>(
              data, 'userDocParam', UsersRecord.fromSnapshot),
          'stockType': getParameter<String>(data, 'stockType'),
          'batchDocParam': await getDocumentParameter<BatchesRecord>(
              data, 'batchDocParam', BatchesRecord.fromSnapshot),
        },
      ),
  'leadsProductsandPostcodes': (data) async => ParameterData(
        allParams: {
          'leadDocParam': await getDocumentParameter<UsersRecord>(
              data, 'leadDocParam', UsersRecord.fromSnapshot),
        },
      ),
  'selectWarehouseToWithdrawStockPage': (data) async => ParameterData(
        allParams: {
          'stockType': getParameter<String>(data, 'stockType'),
        },
      ),
  'withdrawStockPage': (data) async => ParameterData(
        allParams: {
          'stockType': getParameter<String>(data, 'stockType'),
          'warehouseProductDoc':
              await getDocumentParameter<WarehouseProductsRecord>(data,
                  'warehouseProductDoc', WarehouseProductsRecord.fromSnapshot),
          'whDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'whDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'emailLogin': ParameterData.none(),
  'emailSignUpPage': ParameterData.none(),
  'forgotPasswordPage': ParameterData.none(),
  'passwordResetConfirmPage': ParameterData.none(),
  'leadHomePageCopy': ParameterData.none(),
  'manualTransactions': ParameterData.none(),
  'fetchingData': ParameterData.none(),
  'selectWhPage': ParameterData.none(),
  'whPostCodesPage': (data) async => ParameterData(
        allParams: {
          'whDocParam': await getDocumentParameter<WarehousesRecord>(
              data, 'whDocParam', WarehousesRecord.fromSnapshot),
        },
      ),
  'getOrderPage': ParameterData.none(),
  'deletOrderPage': (data) async => ParameterData(
        allParams: {
          'orderDocParam': await getDocumentParameter<OrdersRecord>(
              data, 'orderDocParam', OrdersRecord.fromSnapshot),
        },
      ),
  'deliveredOrderDetailsPage': (data) async => ParameterData(
        allParams: {
          'deliveryDocParam': await getDocumentParameter<DeliveriesRecord>(
              data, 'deliveryDocParam', DeliveriesRecord.fromSnapshot),
        },
      ),
  'OrderDeliveryDetailsPage': (data) async => ParameterData(
        allParams: {
          'orderDocParam': await getDocumentParameter<OrdersRecord>(
              data, 'orderDocParam', OrdersRecord.fromSnapshot),
          'deliveryDocParam': await getDocumentParameter<DeliveriesRecord>(
              data, 'deliveryDocParam', DeliveriesRecord.fromSnapshot),
          'batchDocParam': await getDocumentParameter<BatchesRecord>(
              data, 'batchDocParam', BatchesRecord.fromSnapshot),
        },
      ),
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
