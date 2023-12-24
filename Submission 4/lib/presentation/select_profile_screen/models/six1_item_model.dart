import '../../../core/app_export.dart';

/// This class is used in the [six1_item_widget] screen.
class Six1ItemModel {
  Six1ItemModel({
    this.donorImage,
    this.donorText,
    this.id,
  }) {
    donorImage = donorImage ?? ImageConstant.imgThumbsUp;
    donorText = donorText ?? "Donor";
    id = id ?? "";
  }

  String? donorImage;

  String? donorText;

  String? id;
}
