import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:board_game/caracteristicas/bloc.dart';
import 'package:board_game/caracteristicas/dominio/nick_formado.dart';
import 'package:flutter/material.dart';

class VistaMostrandoNombreNoConfirmado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final elBloc = context.read<BlocVerificacion>();
    return Center();
  }
}
