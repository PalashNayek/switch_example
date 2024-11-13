import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/switch_viewmodel.dart';

class SwitchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<SwitchViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Switch with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<SwitchViewModel>(
            builder: (context, viewModel, child) {
              return SwitchListTile(
                title: Text("Enable Notifications"),
                value: viewModel.isSwitchedOn,
                onChanged: (bool value) {
                  viewModel.toggleSwitch();
                  print(value);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
