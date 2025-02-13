import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'toggle_event.dart';
part 'toggle_state.dart';

class ToggleBloc extends Bloc<ToggleEvent, TogglePasswordSttae> {
  ToggleBloc() : super(TogglePasswordSttae(isObscure: true)) {
    on<TogglePasswordEvent>((event, emit) {
      emit(TogglePasswordSttae(isObscure: !state.isObscure));
    });
  }
}
