import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:houses/home/bloc/home_bloc.dart';
import 'package:houses/house_detail/house_detail.dart';

class HouseDetailPage extends StatelessWidget {
  const HouseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<HomeBloc>(),
      child: const HouseDetailView(),
    );
  }
}
