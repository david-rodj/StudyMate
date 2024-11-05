import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'create_assignment_model.dart';
export 'create_assignment_model.dart';

class CreateAssignmentWidget extends StatefulWidget {
  const CreateAssignmentWidget({super.key});

  @override
  State<CreateAssignmentWidget> createState() => _CreateAssignmentWidgetState();
}

class _CreateAssignmentWidgetState extends State<CreateAssignmentWidget> {
  late CreateAssignmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateAssignmentModel());

    _model.assignmentNameTextController ??= TextEditingController();
    _model.assignmentNameFocusNode ??= FocusNode();

    _model.assignmentDescriptionTextController ??= TextEditingController();
    _model.assignmentDescriptionFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'bqrighrd' /* Crear Asignación */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  letterSpacing: 0.0,
                ),
              ),
            ].divide(SizedBox(height: 4)),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 12, 8),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 12,
                borderWidth: 1,
                buttonSize: 40,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 770,
                            ),
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: TextFormField(
                                      controller:
                                      _model.assignmentNameTextController,
                                      focusNode: _model.assignmentNameFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                      TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          'h5supahn' /* Nombre */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                          fontFamily: 'Inter Tight',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 20, 16, 20),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                        fontFamily: 'Inter Tight',
                                        letterSpacing: 0.0,
                                      ),
                                      maxLength: 60,
                                      cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .assignmentNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: TextFormField(
                                      controller: _model
                                          .assignmentDescriptionTextController,
                                      focusNode:
                                      _model.assignmentDescriptionFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                      TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          'f2wk8b9w' /* Descripción */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                        alignLabelWithHint: true,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Inter',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 12,
                                          letterSpacing: 0.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 16, 16, 16),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                      maxLines: 4,
                                      minLines: 2,
                                      maxLength: 150,
                                      maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                      cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .assignmentDescriptionTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'u4gx8q5c' /* Dificultad */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Slider(
                                      activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                      inactiveColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                      min: 1,
                                      max: 5,
                                      value: _model.assignmentDificultyValue ??=
                                      3,
                                      label: _model.assignmentDificultyValue
                                          ?.toString(),
                                      divisions: 4,
                                      onChanged: (newValue) {
                                        safeSetState(() =>
                                        _model.assignmentDificultyValue =
                                            newValue);
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Container(
                                      width: 84,
                                      height: 39,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 3,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.assignmentDificultyValue
                                                ?.toString(),
                                            '3',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            fontSize: 20,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 152,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 5),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'grce9lff' /* Tipo */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Inter',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                    .assignmentTypeValueController ??=
                                                    FormFieldController<String>(
                                                      _model.assignmentTypeValue ??=
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'xh52n9hi' /* Tarea */,
                                                          ),
                                                    ),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0g5jnsjo' /* Tarea */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '251yzaij' /* Examen */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'j0txutzt' /* Proyecto */,
                                                  )
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .assignmentTypeValue =
                                                        val),
                                                width: 200,
                                                height: 40,
                                                textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                                hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9osouxod' /* Seleccionar */,
                                                ),
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryText,
                                                  size: 24,
                                                ),
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0,
                                                borderRadius: 8,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '3fpd3wqs' /* Fecha Programada */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _datePickedDate =
                                            await showDatePicker(
                                              context: context,
                                              initialDate: getCurrentTimestamp,
                                              firstDate: getCurrentTimestamp,
                                              lastDate: DateTime(2050),
                                              builder: (context, child) {
                                                return wrapInMaterialDatePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primary,
                                                  headerForegroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  headerTextStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .headlineLarge
                                                      .override(
                                                    fontFamily:
                                                    'Inter Tight',
                                                    fontSize: 32,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                  ),
                                                  pickerBackgroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  pickerForegroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primary,
                                                  selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  iconSize: 24,
                                                );
                                              },
                                            );

                                            TimeOfDay? _datePickedTime;
                                            if (_datePickedDate != null) {
                                              _datePickedTime =
                                              await showTimePicker(
                                                context: context,
                                                initialTime:
                                                TimeOfDay.fromDateTime(
                                                    getCurrentTimestamp),
                                                builder: (context, child) {
                                                  return wrapInMaterialTimePickerTheme(
                                                    context,
                                                    child!,
                                                    headerBackgroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    headerForegroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primaryText,
                                                    headerTextStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .headlineLarge
                                                        .override(
                                                      fontFamily:
                                                      'Inter Tight',
                                                      fontSize: 32,
                                                      letterSpacing:
                                                      0.0,
                                                      fontWeight:
                                                      FontWeight
                                                          .w600,
                                                    ),
                                                    pickerBackgroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                    pickerForegroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primaryText,
                                                    selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primaryText,
                                                    actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primaryText,
                                                    iconSize: 24,
                                                  );
                                                },
                                              );
                                            }

                                            if (_datePickedDate != null &&
                                                _datePickedTime != null) {
                                              safeSetState(() {
                                                _model.datePicked = DateTime(
                                                  _datePickedDate.year,
                                                  _datePickedDate.month,
                                                  _datePickedDate.day,
                                                  _datePickedTime!.hour,
                                                  _datePickedTime.minute,
                                                );
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: 129,
                                            height: 56,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            child: Align(
                                              alignment:
                                              AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                      child: Icon(
                                                        Icons.edit_calendar,
                                                        color: Colors.white,
                                                        size: 25,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Align(
                                                        alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'xkfvosje' /* Selecciona una fecha */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .titleSmall
                                                              .override(
                                                            fontFamily:
                                                            'Inter Tight',
                                                            color: Colors
                                                                .white,
                                                            letterSpacing:
                                                            0.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(width: 10)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Container(
                                          width: 210,
                                          height: 56,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              width: 3,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                            AlignmentDirectional(0, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.datePicked?.toString(),
                                                '1/1/1900',
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Inter',
                                                fontSize: 20,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 770,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 12, 16, 12),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('CreateButton pressed ...');
                                        },
                                        text:
                                        FFLocalizations.of(context).getText(
                                          'dv7z6apv' /* Crear */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 48,
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              24, 0, 24, 0),
                                          iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                            fontFamily: 'Inter Tight',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                          elevation: 3,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
                                    .divide(SizedBox(height: 12))
                                    .addToEnd(SizedBox(height: 32)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
