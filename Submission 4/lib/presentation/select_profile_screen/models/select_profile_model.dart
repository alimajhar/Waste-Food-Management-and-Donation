import '../../../core/app_export.dart';
import 'six1_item_model.dart';

class SelectProfileModel {
  List<Six1ItemModel> six1ItemList = [
    Six1ItemModel(donorImage: ImageConstant.imgThumbsUp, donorText: "Donor"),
    Six1ItemModel(donorImage: ImageConstant.imgCheckmark, donorText: "Receiver")
  ];
}
