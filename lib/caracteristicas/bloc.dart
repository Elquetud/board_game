import 'package:bloc/bloc.dart';

class EventoVerificacion {}

class Creado extends EventoVerificacion {}

class NombreRecibido extends EventoVerificacion {}

class NombreConfirmado extends EventoVerificacion {}

class EstadoVerificacion {}

class Creandose extends EstadoVerificacion {}

class SolicitandoNombre extends EstadoVerificacion {}

class MostrandoNombre extends EstadoVerificacion {}

class MostrandoNombreConfirmado extends EstadoVerificacion {}

class EsperandoConfirmacionNombre extends EstadoVerificacion {}

class MostrandoSolicitudActualizacion extends EstadoVerificacion {}

class MostrandoNombreNoConfirmado extends EstadoVerificacion {}

class EsperandoNombre extends EstadoVerificacion {}

class BlocVerificacion extends Bloc<EventoVerificacion, EstadoVerificacion> {
  BlocVerificacion() : super(Creandose()) {
    on<Creado>((event, emit) {
      emit(SolicitandoNombre());
    });
  }
}
