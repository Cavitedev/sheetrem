import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sheetrem/application/sheet_form/sheet_form_bloc.dart';
import 'package:sheetrem/core/app_localization.dart';

class SheetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SheetFormBloc(),
      child: BlocBuilder<SheetFormBloc, SheetFormState>(
        builder: (context, state) =>
            Scaffold(
              appBar: AppBar(
                title: const Text("Sheet"),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(AppLocalization.of(context).translate("Sheet")),
                      TextField(),
                      ElevatedButton(
                        onPressed: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          );
                          context.read<SheetFormBloc>().add(SheetFormEventUpdateDate(newDateTime: date));
                        },
                        child: const Text("Select Date"),
                      ),
                      Text(state.dateTime.toString())
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
