import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_with_bloc/core/consts/app_consts.dart';
import 'package:work_with_bloc/moduls/dogs/bloc/dogs_bloc.dart';

class DogsScreen extends StatelessWidget {
  const DogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<DogsBloc>().add(GetDogsImageEvent());
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("Dogs"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<DogsBloc, DogsState>(
              builder: (context, state) {
                switch (state) {
                  case DogsLoadingState():
                    return const CircularProgressIndicator();
                  case DogsSuccessState():
                    return Image.network(
                      width: 300,
                      height: 300,
                      state.data.message,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    );
                  case DogsErrorState():
                    return Text(state.errorText);
                  default:
                    return const SizedBox();
                }
              },
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppConsts.catsRoute,
                );
              },
              icon: const Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
