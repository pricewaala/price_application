import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist7_item_widget] screen.
class Orderdetailslist7ItemModel {Orderdetailslist7ItemModel({this.orderNumber, this.orderDate, this.trackingNumber, this.trackingNumber1, this.quanlity, this.quantity, this.subtotal, this.subtotal1, this.status, this.id, }) { orderNumber = orderNumber  ?? "Order #1829";orderDate = orderDate  ?? "10/05/2021";trackingNumber = trackingNumber  ?? "Tracking number: ";trackingNumber1 = trackingNumber1  ?? " IK287368831";quanlity = quanlity  ?? "Quanlity:";quantity = quantity  ?? "2";subtotal = subtotal  ?? "Subtotal:";subtotal1 = subtotal1  ?? "210";status = status  ?? "CANCELED";id = id  ?? ""; }

String? orderNumber;

String? orderDate;

String? trackingNumber;

String? trackingNumber1;

String? quanlity;

String? quantity;

String? subtotal;

String? subtotal1;

String? status;

String? id;

 }
