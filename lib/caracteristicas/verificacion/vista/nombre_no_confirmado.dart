import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:board_game/caracteristicas/bloc.dart';
import 'package:board_game/caracteristicas/dominio/nick_formado.dart';
import 'package:flutter/material.dart';

class VistaMostrandoNombreNoConfirmado extends StatelessWidget {
  final NickFormado nick;
  const VistaMostrandoNombreNoConfirmado(this.nick, {super.key});

  @override
  Widget build(BuildContext context) {
    final elBloc = context.read<BlocVerificacion>();
    return Center(
      child: Column(children: [
        Text('este chavalon ${nick.valor} no esta en boardgamepeek'),
        TextButton(
            onPressed: () {
              elBloc.add(Creado());
            },
            child: const Text('Volver'))
      ]),
    );
  }
}
