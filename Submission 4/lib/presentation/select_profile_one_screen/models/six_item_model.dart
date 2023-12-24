import '../../../core/app_export.dart';

/// This class is used in the [six_item_widget] screen.
class SixItemModel {
  SixItemModel({
    this.donorImage,
    this.donorText,
    this.id,
  }) {
    donorImage = donorImage ?? ImageConstant.imgCheckmark;
    donorText = donorText ?? "Donor";
    id = id ?? "";
  }

  String? donorImage;

  String? donorText;

  String? id;
}
