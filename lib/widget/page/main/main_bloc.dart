import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState());

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    // TODO: implement mapEventToState
    if(event is SwitchTabEvent) {
      yield state..selectedIndex = event.selectedIndex;

    }
}
}
