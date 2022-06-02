class ServiceOrderTable {
  static const String tableName = 'service';

  static const String columnOrderId = 'order_id';
  static const String columnServiceId = 'service_id';

  static const List<String> values = [
    columnOrderId,
    columnServiceId,
  ];
}

class ServiceOrder {
  final int serviceId;
  final int orderId;

  const ServiceOrder({
    required this.serviceId,
    required this.orderId,
  });
  ServiceOrder copy({
    int? serviceId,
    int? orderId,
  }) =>
      ServiceOrder(
        serviceId: serviceId ?? this.serviceId,
        orderId: orderId ?? this.orderId,
      );

  Map<String, dynamic> toJson() => {
        ServiceOrderTable.columnServiceId: serviceId,
        ServiceOrderTable.columnOrderId: orderId,
      };

  ServiceOrder.fromJson(Map<String, dynamic> json)
      : serviceId = json[ServiceOrderTable.columnServiceId] as int,
        orderId = json[ServiceOrderTable.columnOrderId] as int;
}
