part of 'swiper_bloc.dart';

abstract class SwiperState extends Equatable {
  const SwiperState();
  
  @override
  List<Object> get props => [];
}

class SwiperInitial extends SwiperState {}
