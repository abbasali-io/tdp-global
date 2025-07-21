import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  Local state fields for this page.

  String warehouseKey = '\'\'';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadMediaE8t = false;
  FFUploadedFile uploadedLocalFile_uploadMediaE8t =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadMediaE8t = '';

  // Stores action output result for [Custom Action - reganerateWarehouseKey] action in Button widget.
  String? newWarehouseKey;
  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    navigationDrawerModel.dispose();
  }
}
