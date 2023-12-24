import 'package:waste_food_management_and_donation/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

class HomeTwoTabContainerModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];
}
