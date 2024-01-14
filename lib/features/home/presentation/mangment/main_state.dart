part of 'main_cubit.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}

class MainDialogInitial extends MainState {
  final bool show;

  MainDialogInitial(this.show);
}

class ChangeSelect extends MainState {
  final int index;

  ChangeSelect({required this.index});
}

class RefreshPage extends MainState {
  final int index;

  RefreshPage({required this.index});
}
