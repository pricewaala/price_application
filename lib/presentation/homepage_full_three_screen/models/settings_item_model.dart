import '../../../core/app_export.dart';/// This class is used in the [settings_item_widget] screen.
class SettingsItemModel {SettingsItemModel({this.settingsIcon, this.text, this.id, }) { settingsIcon = settingsIcon  ?? ImageConstant.imgSettingsBlueGray900;text = text  ?? "Women";id = id  ?? ""; }

String? settingsIcon;

String? text;

String? id;

 }
