import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/config/http_client.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/config/theme/theme.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/auth/data/auth_api_client.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/auth/data/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Đảm bảo Flutter đã khởi tạo xong
  final sf = await SharedPreferences.getInstance();
  runApp(MyApp(
    sharedPreferences: sf,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(
        authApiClient: AuthApiClient(dio),
        authLocalDataSource: AuthLocalDataSource(sharedPreferences),
      ),
      child: BlocProvider(
        create: (context) => AuthBloc(
          context.read<AuthRepository>(),
        ),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'FWMS RM App',
          theme: AppTheme.themeData,
          routerConfig: router,
        ),
      ),
    );
  }
}
