import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TaskFrecuency widget.
  String? taskFrecuencyValue;
  FormFieldController<String>? taskFrecuencyValueController;
  // State field(s) for ProjectsFrecuency widget.
  String? projectsFrecuencyValue;
  FormFieldController<String>? projectsFrecuencyValueController;
  // State field(s) for ExamsFrecuency widget.
  String? examsFrecuencyValue;
  FormFieldController<String>? examsFrecuencyValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
