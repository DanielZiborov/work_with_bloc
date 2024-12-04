import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_with_bloc/core/consts/app_consts.dart';
import 'package:work_with_bloc/core/network/dio_settings.dart';
import 'package:work_with_bloc/domain/repositories/domain_cats_repository.dart';
import 'package:work_with_bloc/domain/repositories/domain_dogs_repository.dart';
import 'package:work_with_bloc/domain/use_cases/get_cats_use_case.dart';
import 'package:work_with_bloc/domain/use_cases/get_dogs_use_case.dart';
import 'package:work_with_bloc/moduls/cats/bloc/cats_bloc.dart';
import 'package:work_with_bloc/moduls/dogs/bloc/dogs_bloc.dart';
import 'package:work_with_bloc/moduls/dogs/screens/dogs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),

        RepositoryProvider(
          create: (context) =>
              GetDogsUseCase(dio: context.read<DioSettings>().dio),
        ),
        RepositoryProvider(
          create: (context) => DomainDogsRepository(
            getDogsUseCase: context.read<GetDogsUseCase>(),
          ),
        ),

        RepositoryProvider(
          create: (context) =>
              GetCatsUseCase(dio: context.read<DioSettings>().dio),
        ),
        RepositoryProvider(
          create: (context) => DomainCatsRepository(
            getCatsUseCase: context.read<GetCatsUseCase>(),
          ),
        ),
      ],

      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DogsBloc(
              repository: context.read<DomainDogsRepository>(),
            ),
          ),

          BlocProvider(
            create: (context) => CatsBloc(
              repository: context.read<DomainCatsRepository>(),
            ),
          ),
          
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            initialRoute: AppConsts.initialRoute,
            routes: {
              AppConsts.initialRoute: (context) => const DogsScreen(),
              AppConsts.catsRoute: (context) => const Placeholder(),
            }),
      ),
    );
  }
}
