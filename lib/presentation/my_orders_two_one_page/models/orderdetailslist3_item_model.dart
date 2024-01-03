import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist3_item_widget] screen.
class Orderdetailslist3ItemModel {Orderdetailslist3ItemModel({this.orderNumber, this.orderDate, this.trackingNumber, this.trackingNumber1, this.quanlity, this.quantity, this.subtotal, this.subtotal1, this.delivered, this.id, }) { orderNumber = orderNumber  ?? "Order #1514";orderDate = orderDate  ?? "13/05/2021";trackingNumber = trackingNumber  ?? "Tracking number: ";trackingNumber1 = trackingNumber1  ?? " IK987362341";quanlity = quanlity  ?? "Quanlity:";quantity = quantity  ?? "2";subtotal = subtotal  ?? "Subtotal:";subtotal1 = subtotal1  ?? "110";delivered = delivered  ?? "DELIVERED";id = id  ?? ""; }

String? orderNumber;

String? orderDate;

String? trackingNumber;

String? trackingNumber1;

String? quanlity;

String? quantity;

String? subtotal;

String? subtotal1;

String? delivered;

String? id;

 }
