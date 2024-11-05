import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';

import 'create_subject_model.dart';
export 'create_subject_model.dart';

class CreateSubjectWidget extends StatefulWidget {
  const CreateSubjectWidget({super.key});

  @override
  State<CreateSubjectWidget> createState() => _CreateSubjectWidgetState();
}

class _CreateSubjectWidgetState extends State<CreateSubjectWidget> {
  late CreateSubjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSubjectModel());

    _model.subjectNameTextController ??= TextEditingController();
    _model.subjectNameFocusNode ??= FocusNode();
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
                  'ibsxe7zd' /* Crear Materia */,
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
            autovalidateMode: AutovalidateMode.always,
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
                                      _model.subjectNameTextController,
                                      focusNode: _model.subjectNameFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                      TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          'e40cqbd4' /* Nombre */,
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
                                            16, 20, 16, 20),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                        fontFamily: 'Inter Tight',
                                        letterSpacing: 0.0,
                                      ),
                                      cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .subjectNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'hbhwwela' /* Color */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
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
                                            final _colorPickedColor =
                                            await showFFColorPicker(
                                              context,
                                              currentColor: _model
                                                  .colorPicked ??=
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              secondaryTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                              backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              primaryButtonBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              primaryButtonTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              primaryButtonBorderColor:
                                              Colors.transparent,
                                              displayAsBottomSheet:
                                              isMobileWidth(context),
                                            );

                                            if (_colorPickedColor != null) {
                                              safeSetState(() =>
                                              _model.colorPicked =
                                                  _colorPickedColor);
                                            }
                                          },
                                          child: Container(
                                            width: 209,
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
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceEvenly,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                    child: Icon(
                                                      Icons.palette_sharp,
                                                      color: Colors.white,
                                                      size: 25,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                          context)
                                                          .getText(
                                                        'djy9vqko' /* Selecciona un color */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .titleSmall
                                                          .override(
                                                        fontFamily:
                                                        'Inter Tight',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 63,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          color: _model.colorPicked,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 4,
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
                                          'iqgsmbiw' /* Crear */,
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
