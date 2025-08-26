import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubito_cubit.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CubitoCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Demo Cubit y Bloc"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: 
          BlocBuilder<CubitoCubit, CubitoState>(
  builder: (context, state) {
    String mensaje = "Presiona el botón";

    if (state is CubitoMensaje) {
      mensaje = state.mensaje;
    }

    return Column(
      children: [
        Text(
          mensaje,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            context.read<CubitoCubit>().mostrarMensaje();
          },
          child: const Text("Mostrar Mensaje"),
        ),
      ],
    );
  },
)

        ),
      ),
    );
  }
}
