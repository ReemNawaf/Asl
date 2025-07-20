import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/siblings_wdg.dart';

import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParentsSiblingsPanel extends StatelessWidget {
  const ParentsSiblingsPanel({
    super.key,
    required this.color,
  });

  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (_, state) {
        return state.hasNode
            ? Container(
                padding: const EdgeInsets.only(left: 10.0),
                height: size.height * PAN_HEIGHT,
                width: (size.width * PAN_WIDTH) - 106,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kVSpacer20,
                      SizedBox(
                        width: (size.width * PAN_WIDTH) - 106,
                        height: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: ((size.width * PAN_WIDTH) - 116) / 2,
                              height: 70,
                              child: AppFormField(
                                label: 'الأب',
                                hint: '',
                                onSaved: (_) {},
                                initialValue: 'ffff',
                                validator: (_) => '',
                                isEditing: false,
                              ),
                            ),
                            kHSpacer10,
                            SizedBox(
                              width: ((size.width * PAN_WIDTH) - 116) / 2,
                              height: 70,
                              child: AppFormField(
                                label: 'الأم',
                                hint: '',
                                onSaved: (_) {},
                                initialValue: 'ffff',
                                validator: (_) => '',
                                isEditing: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      kHSpacer10,
                      SizedBox(
                        width: (size.width * PAN_WIDTH) - 116,
                        height: 215,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SiblingsWidget(size: size),
                            const SizedBox(
                              width: 250,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      kVSpacer10,
                    ],
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
