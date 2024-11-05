import '/flutter_flow/flutter_flow_util.dart';
import 'create_subject_widget.dart' show CreateSubjectWidget;
import 'package:flutter/material.dart';

class CreateSubjectModel extends FlutterFlowModel<CreateSubjectWidget> {
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
        '4ki1w63z' /* Escribe un nombre */,
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
