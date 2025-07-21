import '/components/volunteer_list_item_selectable/volunteer_list_item_selectable_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'volunteer_list_bottomsheet_widget.dart'
    show VolunteerListBottomsheetWidget;
import 'package:flutter/material.dart';

class VolunteerListBottomsheetModel
    extends FlutterFlowModel<VolunteerListBottomsheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for volunteerListItem_selectable dynamic component.
  late FlutterFlowDynamicModels<VolunteerListItemSelectableModel>
      volunteerListItemSelectableModels;

  @override
  void initState(BuildContext context) {
    volunteerListItemSelectableModels =
        FlutterFlowDynamicModels(() => VolunteerListItemSelectableModel());
  }

  @override
  void dispose() {
    volunteerListItemSelectableModels.dispose();
  }
}
