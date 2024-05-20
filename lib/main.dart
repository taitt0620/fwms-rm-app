import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fwms_rm_app/config/client/http_client.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/auth/data/auth_api_client.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/auth/data/auth_repository.dart';
import 'package:fwms_rm_app/features/bottom_navigation_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/bloc/create_good_receipt_note_bloc.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/create_good_receipt_note_api_client.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/create_good_receipt_note_repository.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/grn_local_data_source.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/bloc/create_quality_control_report_bloc.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/data/create_quality_control_report_api_client.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/data/create_quality_control_report_repository.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/data/qcr_local_data_source.dart';
import 'package:fwms_rm_app/features/create_request/bloc/create_request_bloc.dart';
import 'package:fwms_rm_app/features/create_request/data/create_request_api_client.dart';
import 'package:fwms_rm_app/features/create_request/data/create_request_repository.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order/data/purchase_order_repository.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/bloc/purchase_order_detail_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/data/purchase_order_detail_repository.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/bloc/purchase_order_phase_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/data/purchase_order_phase_api_client.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/data/purchase_order_phase_repository.dart';
import 'package:fwms_rm_app/features/qr-scan/bloc/qr_scan_bloc.dart';
import 'package:fwms_rm_app/features/quality_control_report/bloc/quality_control_report_bloc.dart';
import 'package:fwms_rm_app/features/quality_control_report/data/quality_control_report_api_client.dart';
import 'package:fwms_rm_app/features/quality_control_report/data/quality_control_report_repository.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/bloc/quality_control_report_detail_bloc.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/data/quality_control_report_detail_api_client.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/data/quality_control_report_detail_repository.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/features/request/data/request_api_client.dart';
import 'package:fwms_rm_app/features/request/data/request_repository.dart';
import 'package:fwms_rm_app/features/user/bloc/user_bloc.dart';
import 'package:fwms_rm_app/features/user/data/user_api_client.dart';
import 'package:fwms_rm_app/features/user/data/user_repository.dart';
import 'package:fwms_rm_app/features/warehouse/bloc/warehouse_bloc.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_api_client.dart';
import 'package:fwms_rm_app/features/warehouse/data/warehouse_repository.dart';
import 'package:fwms_rm_app/utils/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final sf = await SharedPreferences.getInstance();
  FlutterNativeSplash.remove();
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
          create: (context) => UserRepository(
            apiClient: UserApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => PurchaseOrderRepository(
              apiClient: PurchaseOrderApiClient(dio),
              authLocalDataSource: AuthLocalDataSource(sharedPreferences)),
        ),
        RepositoryProvider(
          create: (context) => PurchaseOrderDetailRepository(
            apiClient: PurchaseOrderDetailApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => PurchaseOrderPhaseRepository(
            apiClient: PurchaseOrderPhaseApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => RequestRepository(
            apiClient: RequestApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => CreateRequestRepository(
            apiClient: CreateRequestApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => QualityControlReportRepository(
            apiClient: QualityControlReportApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => QualityControlReportDetailRepository(
            apiClient: QualityControlReportDetailApiClient(dio),
            authLocalDataSource: AuthLocalDataSource(sharedPreferences),
          ),
        ),
        RepositoryProvider(
          create: (context) => CreateQualityControlReportRepository(
              localDataSource:
                  QualityControlReportLocalDataSource(sharedPreferences),
              authLocalDataSource: AuthLocalDataSource(sharedPreferences),
              apiClient: CreateQualityControlReportApiClient(dio)),
        ),
        RepositoryProvider(
          create: (context) => CreateGoodReceiptNoteRepository(
            localDataSource: GoodReceiptNoteLocalDataSource(sharedPreferences),
            apiClient: CreateGoodReceiptNoteApiClient(dio),
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
            create: (context) => UserBloc(
              context.read<UserRepository>(),
            ),
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
            create: (context) => PurchaseOrderPhaseBloc(
              context.read<PurchaseOrderPhaseRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => RequestBloc(
              context.read<RequestRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => CreateRequestBloc(
              context.read<CreateRequestRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => QualityControlReportBloc(
              context.read<QualityControlReportRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => QualityControlReportDetailBloc(
              context.read<QualityControlReportDetailRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => CreateQualityControlReportBloc(
              context.read<CreateQualityControlReportRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => CreateGoodReceiptNoteBloc(
              context.read<CreateGoodReceiptNoteRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => WarehouseBloc(
              context.read<WarehouseRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => QrScanBloc(),
          ),
        ],
        child: const AppContent(),
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
