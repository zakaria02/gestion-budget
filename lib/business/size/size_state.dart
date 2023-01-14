part of 'size_cubit.dart';

class SizeState extends Equatable {
  final Size size;
  final double height;
  final double width;

  const SizeState(this.size, this.height, this.width);

  @override
  List<Object> get props => [size, height, width];
}
