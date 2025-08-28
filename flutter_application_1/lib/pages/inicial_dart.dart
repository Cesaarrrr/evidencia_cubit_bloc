import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubito_cubit.dart';
import '../cubit/cubito_state.dart';
import '../bloc/estados_bloc.dart';
import '../bloc/estados_event.dart';
import '../bloc/estados_state.dart';

class InicialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CubitoCubit()..cargarPosts()),
        BlocProvider(create: (_) => EstadosBloc()..add(CargarUsuarios())),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cubit y Bloc"),
          backgroundColor: const Color.fromARGB(255, 43, 0, 255),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<CubitoCubit, CubitoState>(
                builder: (context, state) {
                  if (state is CubitoLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is CubitoLoaded) {
                    return ListView.builder(
                      itemCount: state.posts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.posts[index]["title"]),
                          subtitle: Text(state.posts[index]["body"]),
                        );
                      },
                    );
                  } else if (state is CubitoError) {
                    return Center(child: Text(state.message));
                  }
                  return Container();
                },
              ),
            ),

            Divider(),
            Expanded(
              child: BlocBuilder<EstadosBloc, EstadosState>(
                builder: (context, state) {
                  if (state is EstadosLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is EstadosLoaded) {
                    return ListView.builder(
                      itemCount: state.usuarios.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.usuarios[index]["name"]),
                          subtitle: Text(state.usuarios[index]["email"]),
                        );
                      },
                    );
                  } else if (state is EstadosError) {
                    return Center(child: Text(state.message));
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
