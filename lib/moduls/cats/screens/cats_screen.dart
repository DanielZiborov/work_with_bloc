import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_with_bloc/moduls/cats/bloc/cats_bloc.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CatsBloc>().add(GetCatsImageEvent());
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("Cats"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CatsBloc, CatsState>(
              builder: (context, state) {
                switch (state) {
                  case CatsLoadingState():
                    return const CircularProgressIndicator();
                  case CatsSuccessState():
                    return Image.network(
                      width: 300,
                      height: 300,
                      state.data.url,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    );
                  case CatsErrorState():
                    return Text(state.error);
                  default:
                    return const SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
