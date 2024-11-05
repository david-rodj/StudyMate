import '/flutter_flow/flutter_flow_util.dart';
import 'edit_subject_widget.dart' show EditSubjectWidget;
import 'package:flutter/material.dart';

class EditSubjectModel extends FlutterFlowModel<EditSubjectWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for SubjectName widget.
  FocusNode? subjectNameFocusNode;
  TextEditingController? subjectNameTextController;
  String? Function(BuildContext, String?)? subjectNameTextControllerValidator;
  String? _subjectNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n3w8dhcb' /* Escribe un nombre */,
      );
    }

    return null;
  }

  Color? colorPicked;

  @override
  void initState(BuildContext context) {
    subjectNameTextControllerValidator = _subjectNameTextControllerValidator;
  }

  @override
  void dispose() {
    subjectNameFocusNode?.dispose();
    subjectNameTextController?.dispose();
  }
}
