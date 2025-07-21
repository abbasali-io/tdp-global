import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'un_damage_goods_widget.dart' show UnDamageGoodsWidget;
import 'package:flutter/material.dart';

class UnDamageGoodsModel extends FlutterFlowModel<UnDamageGoodsWidget> {
  ///  Local state fields for this page.

  int? remainingDamagedItems = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for damagedTxt widget.
  FocusNode? damagedTxtFocusNode;
  TextEditingController? damagedTxtTextController;
  String? Function(BuildContext, String?)? damagedTxtTextControllerValidator;
  // State field(s) for undamageTxt widget.
  FocusNode? undamageTxtFocusNode;
  TextEditingController? undamageTxtTextController;
  String? Function(BuildContext, String?)? undamageTxtTextControllerValidator;
  // State field(s) for balanceTxt widget.
  FocusNode? balanceTxtFocusNode;
  TextEditingController? balanceTxtTextController;
  String? Function(BuildContext, String?)? balanceTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    damagedTxtFocusNode?.dispose();
    damagedTxtTextController?.dispose();

    undamageTxtFocusNode?.dispose();
    undamageTxtTextController?.dispose();

    balanceTxtFocusNode?.dispose();
    balanceTxtTextController?.dispose();
  }
}
