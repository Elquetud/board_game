import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:board_game/caracteristicas/bloc.dart';
import 'package:board_game/caracteristicas/dominio/registro_usuario.dart';

class VistaMostrandoNombreConfirmado extends StatelessWidget {
  final RegistroUsuario registro;
  const VistaMostrandoNombreConfirmado(this.registro, {super.key});

  @override
  Widget build(BuildContext context) {
    final elBloc = context.read<BlocVerificacion>();
    return Column(
      children: [
        Text('${registro.apellido} ${registro.nombre}'),
        Text('${registro.anioRegistro}'),
        Text('${registro.estado} ${registro.pais}'),
        TextButton(
            onPressed: () {
              elBloc.add(Creado());
            },
            child: const Text('Volver'))
      ],
    );
  }
}
