import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

@Injectable()
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  showDialog() {
    emit(MainDialogInitial(true));
  }

  changeSelect(int index) {  
    emit(ChangeSelect(index: index));
  }

  refreshPage(int index) {
    emit(RefreshPage(index: index));
  }
}
