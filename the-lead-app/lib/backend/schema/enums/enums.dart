import 'package:collection/collection.dart';

enum StockMovementEnum {
  assignedToWarehouse,
  damagedByWarehouse,
  returnedToAdmin,
  assignedToVolunteer,
  deliverySucessful,
  offlineSale,
  damagedByVolunteer,
  returnedToWarehouse,
  reversedByOfflineSaleReturn,
  assignToAdmin,
  stockTransfer,
  withdrawByAdmin,
  postcodeAdded,
  postcodeDeleted,
}

enum CashTransactionsEnum {
  offlineSaleCashIn,
  transferToLead,
  transferToAdmin,
  SaleReturned,
}

enum EntitiesEnum {
  Warehouse,
  Volunteer,
  Lead,
  Admin,
}

enum StockTypes {
  online,
  offline,
}

enum UserRole {
  admin,
  lead,
  volunteer,
}

enum WhStockFilters {
  assignedToWarehouse,
  damagedByWarehouse,
  assignedToVolunteer,
}

enum StockTransferType {
  onlineToOffline,
  offlineToOnline,
}

enum OrderStatus {
  processing,
  assigned,
  delivered,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (StockMovementEnum):
      return StockMovementEnum.values.deserialize(value) as T?;
    case (CashTransactionsEnum):
      return CashTransactionsEnum.values.deserialize(value) as T?;
    case (EntitiesEnum):
      return EntitiesEnum.values.deserialize(value) as T?;
    case (StockTypes):
      return StockTypes.values.deserialize(value) as T?;
    case (UserRole):
      return UserRole.values.deserialize(value) as T?;
    case (WhStockFilters):
      return WhStockFilters.values.deserialize(value) as T?;
    case (StockTransferType):
      return StockTransferType.values.deserialize(value) as T?;
    case (OrderStatus):
      return OrderStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
