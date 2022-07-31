import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/di.dart';

class BaseView<T extends Cubit<S>, S> extends StatefulWidget {
  const BaseView({
    Key? key,
    required this.setupViewModel,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext context, S state, T viewModel) builder;
  final Function(T viewModel) setupViewModel;

  @override
  State<BaseView> createState() => _BaseViewState<T, S>();
}

class _BaseViewState<T extends Cubit<S>, S> extends State<BaseView<T, S>> with WidgetsBindingObserver {
  late T viewModel;

  @override
  void initState() {
    viewModel = inject<T>();
    widget.setupViewModel(viewModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: viewModel,
      child: BlocBuilder<T, S>(
        bloc: viewModel,
        key: const Key('BaseView_Consumer'),
        builder: (context, state) {
          final viewModel = context.watch<T>();
          return widget.builder(context, state, viewModel);
        },
      ),
    );
  }
}
