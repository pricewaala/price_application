import '../../../core/app_export.dart';/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.orderNumberText, this.orderDateText, this.trackingNumber, this.trackingNumberText, this.quanlity, this.quantityText, this.subtotal, this.subtotalText, this.priceText, this.id, }) { orderNumberText = orderNumberText  ?? "Order #1524";orderDateText = orderDateText  ?? "13/05/2021";trackingNumber = trackingNumber  ?? "Tracking number: ";trackingNumberText = trackingNumberText  ?? " IK287368838";quanlity = quanlity  ?? "Quanlity:";quantityText = quantityText  ?? "2";subtotal = subtotal  ?? "Subtotal:";subtotalText = subtotalText  ?? "110";priceText = priceText  ?? "PENDING";id = id  ?? ""; }

String? orderNumberText;

String? orderDateText;

String? trackingNumber;

String? trackingNumberText;

String? quanlity;

String? quantityText;

String? subtotal;

String? subtotalText;

String? priceText;

String? id;

 }
