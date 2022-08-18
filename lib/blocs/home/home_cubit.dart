import 'package:flutter_bloc/flutter_bloc.dart';

//Cubit은 간단한 상태관리를 위해 사용할 수 있다. Bloc 보다 간단하게 구현할 수 있다.

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  void getMain() => emit(0);   //Use emit when you want a new state for your bloc.
  void getCatalog() => emit(1);
  void getNotification() => emit(2);
  void getMore() => emit(3);
}