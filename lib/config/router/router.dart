import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/bottom_navigation_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:fwms_rm_app/screens/bottom_navigation_bar/bottom_navigation_bar_screen.dart';
import 'package:fwms_rm_app/screens/create_good_issue/create_good_issue_screen.dart';
import 'package:fwms_rm_app/screens/create_good_receipt/create_good_receipt_screen.dart';
import 'package:fwms_rm_app/screens/create_quality_control_report/create_report_screen.dart';
import 'package:fwms_rm_app/screens/enquiry/enquiry-screen.dart';
import 'package:fwms_rm_app/screens/good_issue/good_issue_screen.dart';
import 'package:fwms_rm_app/screens/good_receipt/good_receipt_screen.dart';
import 'package:fwms_rm_app/screens/home/home_screen.dart';
import 'package:fwms_rm_app/screens/profile/edit_profile_screen.dart';
import 'package:fwms_rm_app/screens/profile/profile_screen.dart';
import 'package:fwms_rm_app/screens/purchase_order/purchase_order_screen.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/purchase_order_detail_screen.dart';
import 'package:fwms_rm_app/screens/qr_scan/qr_scan_screen.dart';
import 'package:fwms_rm_app/screens/quality_control_report/quality_control_report_screen.dart';
import 'package:fwms_rm_app/screens/quality_control_report_detail/quality_control_report_detail_screen.dart';
import 'package:fwms_rm_app/screens/request/request_screen.dart';
import 'package:fwms_rm_app/screens/login/login_screen.dart';
import 'package:fwms_rm_app/screens/setting/setting_screen.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  ///auth routes
  ///splash
  static const String login = '/login';

  ///navigation routes
  static const String bottomNavBar = '/';

  ///home routes
  static const String home = '/home';
  static const String enquiry = '/enquiry';
  static const String setting = '/setting';

  ///purchase order routes
  static const String purchaseOrder = '/purchase-order';
  static const String purchaseOderDetail = '/purchase-order-detail';

  ///request routes
  static const String request = '/request';
  static const String requestDetail = '/request-detail';
  static const String requestCreate = '/request-create';

  ///quality control report routes
  static const String qualityControlReport = '/quality-control-report';
  static const String qualityControlReportDetail =
      '/quality-control-report-detail';
  static const String qualityControlReportCreate =
      '/quality-control-report-create';

  ///good receipt routes
  static const String goodReceipt = '/good-receipt';
  static const String goodReceiptDetail = '/good-receipt-detail';
  static const String goodReceiptCreate = '/good-receipt-create';

  ///good issue routes
  static const String goodIssue = '/good-issue';
  static const String goodIssueDetail = '/good-issue-detail';
  static const String goodIssueCreate = '/good-issue-create';

  ///qr scan routes
  static const String qrScan = '/qrscan';
  static const String scanner = '/scanner';

  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const publicRoutes = [
    login,
  ];
}

final BottomNavBarBloc bottomNavBarBloc = BottomNavBarBloc();
final router = GoRouter(
  redirect: (context, state) {
    if (RouteName.publicRoutes.contains(state.fullPath)) {
      return null;
    }
    if (context.read<AuthBloc>().state is AuthAuthenticateSuccess) {
      return null;
    }
    return RouteName.login;
  },
  routes: [
    GoRoute(
      path: RouteName.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RouteName.bottomNavBar,
      builder: (context, state) => BlocProvider<BottomNavBarBloc>.value(
        value: bottomNavBarBloc,
        child: const BottomNavigationBarScreen(),
      ),
    ),
    GoRoute(
      path: RouteName.home,
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: RouteName.enquiry,
      name: 'enquiry',
      builder: (context, state) => const EnquiryScreen(),
    ),

    GoRoute(
      path: RouteName.setting,
      name: 'setting',
      builder: (context, state) => const SettingScreen(),
    ),

    GoRoute(
      path: RouteName.purchaseOrder,
      name: 'purchase-order',
      builder: (context, state) => const PurchaseOrderScreen(),
    ),
    GoRoute(
      path: RouteName.purchaseOderDetail,
      name: 'purchase-order-detail',
      builder: (context, state) {
        final id = state.uri.queryParameters['id'];
        return PurchaseOrderDetailScreen(id: id);
      },
    ),
    GoRoute(
      path: RouteName.request,
      name: 'request',
      builder: (context, state) => const RequestScreen(),
    ),
    GoRoute(
      path: RouteName.qualityControlReport,
      name: 'quality-control-report',
      builder: (context, state) => const QualityControlReportScreen(),
    ),
    GoRoute(
        path: RouteName.qualityControlReportDetail,
        name: 'quality-control-report-detail',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'];
          return QualityControlReportDetailScreen(id: id);
        }),
    GoRoute(
      path: RouteName.qualityControlReportCreate,
      name: 'create-quality-control-report',
      builder: (context, state) {
        final poCode = state.uri.queryParameters['poCode'];
        final requestId = state.uri.queryParameters['requestId'];
        return CreateReportScreen(poCode: poCode, requestId: requestId);
      },
    ),
    //good receipt screen
    GoRoute(
      path: RouteName.goodReceipt,
      name: 'good-receipt',
      builder: (context, state) => const GoodReceiptScreen(),
    ),
    // create good receipt screen
    GoRoute(
      path: RouteName.goodReceiptCreate,
      name: 'create-good-receipt',
      builder: (context, state) => const CreateGoodReceiptScreen(),
    ),
    // good Issue screen
    GoRoute(
      path: RouteName.goodIssue,
      name: 'good-issue',
      builder: (context, state) => const GoodIssueScreen(),
    ),
    // create good Issue screen
    GoRoute(
      path: RouteName.goodIssueCreate,
      name: 'create-good-issue',
      builder: (context, state) => const CreateGoodIssueScreen(),
    ),

    GoRoute(
      path: RouteName.qrScan,
      name: 'qr-scan',
      builder: (context, state) => const QrScanScreen(),
    ),
    GoRoute(
      path: RouteName.profile,
      name: 'profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: RouteName.editProfile,
      name: 'edit-profile',
      builder: (context, state) {
        final name = state.uri.queryParameters['name'];
        final userName = state.uri.queryParameters['userName'];
        final gender = state.uri.queryParameters['gender'];
        final phone = state.uri.queryParameters['phone'];
        final address = state.uri.queryParameters['address'];
        return EditProfileScreen(
          name: name,
          userName: userName,
          gender: int.parse(gender.toString()),
          phone: phone,
          address: address,
        );
      },
    ),
  ],
);
