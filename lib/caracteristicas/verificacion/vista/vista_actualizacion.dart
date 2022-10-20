import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:board_game/caracteristicas/bloc.dart';

class VistaMostrandoSolicitudActualizacion extends StatelessWidget {
  const VistaMostrandoSolicitudActualizacion({super.key});

  @override
  Widget build(BuildContext context) {
    final elBloc = context.read<BlocVerificacion>();
    return Center(
      child: Column(
        children: [
          Text(
            'Actualizate Compadre',
            style: Theme.of(context).textTheme.headline1,
          ),
          TextButton(
            onPressed: () {
              elBloc.add(Creado());
            },
            child: Text(
              'Volver',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}
