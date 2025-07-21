import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_lead_widget.dart' show AddLeadWidget;
import 'package:flutter/material.dart';

class AddLeadModel extends FlutterFlowModel<AddLeadWidget> {
  ///  Local state fields for this page.

  String selectedRole = 'None';

  String? initialPassword = 'dNCv#5kg';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (createLead)] action in Button widget.
  ApiCallResponse? leadAddSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
