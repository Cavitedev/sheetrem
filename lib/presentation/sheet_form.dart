import 'package:flutter/material.dart';
import 'package:sheetrem/core/app_localization.dart';

class SheetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sheet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(AppLocalization.of(context).translate("Sheet")),

              TextField(

              ),

              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                },
                child: const Text("Select Date"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
