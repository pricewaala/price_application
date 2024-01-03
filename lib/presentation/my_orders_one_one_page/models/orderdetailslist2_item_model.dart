import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist2_item_widget] screen.
class Orderdetailslist2ItemModel {Orderdetailslist2ItemModel({this.orderNumber, this.orderDate, this.trackingNumber, this.trackingNumber1, this.quanlity, this.quantity, this.subtotal, this.subtotal1, this.price, this.id, }) { orderNumber = orderNumber  ?? "Order #1524";orderDate = orderDate  ?? "13/05/2021";trackingNumber = trackingNumber  ?? "Tracking number: ";trackingNumber1 = trackingNumber1  ?? " IK287368838";quanlity = quanlity  ?? "Quanlity:";quantity = quantity  ?? "2";subtotal = subtotal  ?? "Subtotal:";subtotal1 = subtotal1  ?? "110";price = price  ?? "PENDING";id = id  ?? ""; }

String? orderNumber;

String? orderDate;

String? trackingNumber;

String? trackingNumber1;

String? quanlity;

String? quantity;

String? subtotal;

String? subtotal1;

String? price;

String? id;

 }
