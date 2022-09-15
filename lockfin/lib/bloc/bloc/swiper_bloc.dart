import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'swiper_event.dart';
part 'swiper_state.dart';

class SwiperBloc extends Bloc<SwiperEvent, SwiperState> {
  SwiperBloc() : super(SwiperInitial()) {
    on<SwiperEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
