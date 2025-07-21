import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lead_make_payment_page_widget.dart' show LeadMakePaymentPageWidget;
import 'package:flutter/material.dart';

class LeadMakePaymentPageModel
    extends FlutterFlowModel<LeadMakePaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for enterAmountTxt widget.
  FocusNode? enterAmountTxtFocusNode;
  TextEditingController? enterAmountTxtTextController;
  String? Function(BuildContext, String?)?
      enterAmountTxtTextControllerValidator;
  String? _enterAmountTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for paymentNotesTxt widget.
  FocusNode? paymentNotesTxtFocusNode;
  TextEditingController? paymentNotesTxtTextController;
  String? Function(BuildContext, String?)?
      paymentNotesTxtTextControllerValidator;
  String? _paymentNotesTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 400) {
      return 'Maximum 400 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  bool isDataUploading_cashTranProof = false;
  FFUploadedFile uploadedLocalFile_cashTranProof =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_cashTranProof = '';

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? adminUserDocQuery;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CashTransactionsRecord? newCashTran;

  @override
  void initState(BuildContext context) {
    enterAmountTxtTextControllerValidator =
        _enterAmountTxtTextControllerValidator;
    paymentNotesTxtTextControllerValidator =
        _paymentNotesTxtTextControllerValidator;
  }

  @override
  void dispose() {
    enterAmountTxtFocusNode?.dispose();
    enterAmountTxtTextController?.dispose();

    paymentNotesTxtFocusNode?.dispose();
    paymentNotesTxtTextController?.dispose();
  }
}
