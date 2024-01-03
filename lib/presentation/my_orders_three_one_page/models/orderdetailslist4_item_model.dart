import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist4_item_widget] screen.
class Orderdetailslist4ItemModel {Orderdetailslist4ItemModel({this.orderNumber, this.orderDate, this.trackingLabel, this.trackingNumber, this.quantityLabel, this.quantity, this.subtotalLabel, this.subtotal, this.status, this.id, }) { orderNumber = orderNumber  ?? "Order #1829";orderDate = orderDate  ?? "10/05/2021";trackingLabel = trackingLabel  ?? "Tracking number: ";trackingNumber = trackingNumber  ?? " IK287368831";quantityLabel = quantityLabel  ?? "Quanlity:";quantity = quantity  ?? "2";subtotalLabel = subtotalLabel  ?? "Subtotal:";subtotal = subtotal  ?? "210";status = status  ?? "CANCELED";id = id  ?? ""; }

String? orderNumber;

String? orderDate;

String? trackingLabel;

String? trackingNumber;

String? quantityLabel;

String? quantity;

String? subtotalLabel;

String? subtotal;

String? status;

String? id;

 }
