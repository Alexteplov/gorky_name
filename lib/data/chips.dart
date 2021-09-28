import 'package:flutter/material.dart';
import 'package:gorky_name/const/const_variables.dart';
import 'package:gorky_name/ui/model/chip_data.dart';

class Chips {
  static final all = <ChipData>[
    const ChipData(
      label: GlobalMenu.billboard,
      backgroundColor: Colors.red,
    ),
    const ChipData(
      label: GlobalMenu.structure,
      backgroundColor: Colors.red,
    ),
  ];
}
