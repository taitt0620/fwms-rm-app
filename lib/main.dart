import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/config/client/http_client.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/auth/data/auth_api_client.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/auth/data/auth_repository.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_repository.dart';
import 'package:fwms_rm_app/utils/theme/theme.dart';
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
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(
            authApiClient: AuthApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => PurchaseOrderRepository(
              purchaseOrderApiClient: PurchaseOrderApiClient(dio)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              context.read<AuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => PurchaseOrderBloc(
              context.read<PurchaseOrderRepository>(),
            ),
          ),
        ],
        child: AppContent(),
      ),
    );
  }
}

class AppContent extends StatefulWidget {
  const AppContent({
    super.key,
  });

  @override
  State<AppContent> createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(AuthAuthenticatedStarted());
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    if (authState is AuthInitial) {
      return Container();
    }
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'FWMS RM App',
      theme: CustomAppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
