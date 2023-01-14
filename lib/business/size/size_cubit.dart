import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'size_state.dart';

class SizeCubit extends Cubit<SizeState> {
  SizeCubit() : super(const SizeState(Size(0, 0), 0, 0));

  void getSize(Size size) {
    emit(SizeState(size, size.height, size.width));
  }
}
