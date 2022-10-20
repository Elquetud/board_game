import 'package:bloc/bloc.dart';
import 'package:board_game/caracteristicas/dominio/nick_formado.dart';
import 'package:board_game/caracteristicas/dominio/problemas.dart';
import 'package:board_game/caracteristicas/dominio/registro_usuario.dart';

class EventoVerificacion {}

class Creado extends EventoVerificacion {}

class NombreRecibido extends EventoVerificacion {
  final NickFormado nick;
  NombreRecibido(this.nick);
}

class NombreConfirmado extends EventoVerificacion {}

class EstadoVerificacion {}

class Creandose extends EstadoVerificacion {}

class SolicitandoNombre extends EstadoVerificacion {}

class MostrandoNombre extends EstadoVerificacion {}

class MostrandoNombreConfirmado extends EstadoVerificacion {
  final RegistroUsuario registroUsuario;
  MostrandoNombreConfirmado(this.registroUsuario);
}

class EsperandoConfirmacionNombre extends EstadoVerificacion {}

class MostrandoSolicitudActualizacion extends EstadoVerificacion {}

class MostrandoNombreNoConfirmado extends EstadoVerificacion {
  final NickFormado nick;
  MostrandoNombreNoConfirmado(this.nick);
}

class EsperandoNombre extends EstadoVerificacion {}

class BlocVerificacion extends Bloc<EventoVerificacion, EstadoVerificacion> {
  BlocVerificacion() : super(Creandose()) {
    on<Creado>((event, emit) {
      emit(SolicitandoNombre());
    });
  }
}
