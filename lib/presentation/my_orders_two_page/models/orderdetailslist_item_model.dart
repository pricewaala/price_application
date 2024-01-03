import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist_item_widget] screen.
class OrderdetailslistItemModel {OrderdetailslistItemModel({this.orderNumber, this.orderDate, this.trackingLabel, this.trackingNumber, this.quantityLabel, this.quantity, this.subtotalLabel, this.subtotal, this.deliveryStatus, this.id, }) { orderNumber = orderNumber  ?? "Order #1514";orderDate = orderDate  ?? "13/05/2021";trackingLabel = trackingLabel  ?? "Tracking number: ";trackingNumber = trackingNumber  ?? " IK987362341";quantityLabel = quantityLabel  ?? "Quanlity:";quantity = quantity  ?? "2";subtotalLabel = subtotalLabel  ?? "Subtotal:";subtotal = subtotal  ?? "110";deliveryStatus = deliveryStatus  ?? "DELIVERED";id = id  ?? ""; }

String? orderNumber;

String? orderDate;

String? trackingLabel;

String? trackingNumber;

String? quantityLabel;

String? quantity;

String? subtotalLabel;

String? subtotal;

String? deliveryStatus;

String? id;

 }
