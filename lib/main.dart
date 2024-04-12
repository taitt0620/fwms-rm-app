import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/config/client/http_client.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/auth/data/auth_api_client.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/auth/data/auth_repository.dart';
import 'package:fwms_rm_app/features/bottom_navigation_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_repository.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/bloc/purchase_order_detail_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_repository.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/features/request/data/request_api_client.dart';
import 'package:fwms_rm_app/features/request/data/request_repository.dart';
import 'package:fwms_rm_app/features/warehouse/bloc/warehouse_bloc.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_api_client.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_repository.dart';
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
        RepositoryProvider(
          create: (context) => PurchaseOrderDetailRepository(
            apiClient: PurchaseOrderDetailApiClient(dio),
          ),
        ),
        RepositoryProvider(
          create: (context) => RequestRepository(
            requestApiClient: RequestApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => WarehouseRepository(
            warehouseApiClient: WarehouseApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
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
            create: (context) => BottomNavBarBloc(),
          ),
          BlocProvider(
            create: (context) => PurchaseOrderBloc(
              context.read<PurchaseOrderRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => PurchaseOrderDetailBloc(
              context.read<PurchaseOrderDetailRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => RequestBloc(
              context.read<RequestRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => WarehouseBloc(
              context.read<WarehouseRepository>(),
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
