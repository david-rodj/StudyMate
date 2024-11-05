import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_assingment_widget.dart' show EditAssingmentWidget;
import 'package:flutter/material.dart';

class EditAssingmentModel extends FlutterFlowModel<EditAssingmentWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AssignmentName widget.
  FocusNode? assignmentNameFocusNode;
  TextEditingController? assignmentNameTextController;
  String? Function(BuildContext, String?)?
  assignmentNameTextControllerValidator;
  String? _assignmentNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '22n0fulb' /* Escriba un nombre */,
      );
    }

    return null;
  }

  // State field(s) for AssignmentDescription widget.
  FocusNode? assignmentDescriptionFocusNode;
  TextEditingController? assignmentDescriptionTextController;
  String? Function(BuildContext, String?)?
  assignmentDescriptionTextControllerValidator;
  // State field(s) for AssignmentDificulty widget.
  double? assignmentDificultyValue;
  // State field(s) for AssignmentType widget.
  String? assignmentTypeValue;
  FormFieldController<String>? assignmentTypeValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    assignmentNameTextControllerValidator =
        _assignmentNameTextControllerValidator;
  }

  @override
  void dispose() {
    assignmentNameFocusNode?.dispose();
    assignmentNameTextController?.dispose();

    assignmentDescriptionFocusNode?.dispose();
    assignmentDescriptionTextController?.dispose();
  }
}
