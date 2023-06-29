import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePage2CopyWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePage2CopyWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'HomePage2',
              path: 'homePage2',
              builder: (context, params) => HomePage2Widget(),
            ),
            FFRoute(
              name: 'checkScale',
              path: 'checkScale',
              builder: (context, params) => CheckScaleWidget(
                latlng: params.getParam('latlng', ParamType.LatLng),
              ),
            ),
            FFRoute(
              name: 'ontime',
              path: 'ontime',
              builder: (context, params) => OntimeWidget(),
            ),
            FFRoute(
              name: 'partner',
              path: 'partner',
              builder: (context, params) => PartnerWidget(),
            ),
            FFRoute(
              name: 'ship_detail',
              path: 'shipDetail',
              builder: (context, params) => ShipDetailWidget(
                shipref: params.getParam(
                    'shipref', ParamType.DocumentReference, false, ['ship']),
              ),
            ),
            FFRoute(
              name: 'lodge_detail',
              path: 'lodgeDetail',
              builder: (context, params) => LodgeDetailWidget(
                lodgeref: params.getParam(
                    'lodgeref', ParamType.DocumentReference, false, ['lodge']),
              ),
            ),
            FFRoute(
              name: 'place_detail',
              path: 'placeDetail',
              builder: (context, params) => PlaceDetailWidget(
                placeref: params.getParam('placeref',
                    ParamType.DocumentReference, false, ['fishingzone2']),
              ),
            ),
            FFRoute(
              name: 'contest_detail',
              path: 'contestDetail',
              builder: (context, params) => ContestDetailWidget(
                contest2ref: params.getParam('contest2ref',
                    ParamType.DocumentReference, false, ['contest2']),
              ),
            ),
            FFRoute(
              name: 'contest_entry',
              path: 'contestEntry',
              builder: (context, params) => ContestEntryWidget(
                contest2ref: params.getParam('contest2ref',
                    ParamType.DocumentReference, false, ['contest2']),
                checkValue: params.getParam('checkValue', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'game_detail',
              path: 'gameDetail',
              builder: (context, params) => GameDetailWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'game_entry',
              path: 'gameEntry',
              builder: (context, params) => GameEntryWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
                checkValue: params.getParam('checkValue', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'review_all',
              path: 'reviewAll',
              builder: (context, params) => ReviewAllWidget(
                placeref: params.getParam('placeref',
                    ParamType.DocumentReference, false, ['fishingzone2']),
                logeref: params.getParam(
                    'logeref', ParamType.DocumentReference, false, ['lodge']),
                shipref: params.getParam(
                    'shipref', ParamType.DocumentReference, false, ['ship']),
                searef: params.getParam(
                    'searef', ParamType.DocumentReference, false, ['sea']),
                shopref: params.getParam(
                    'shopref', ParamType.DocumentReference, false, ['shop']),
                ticketref: params.getParam('ticketref',
                    ParamType.DocumentReference, false, ['ticket']),
              ),
            ),
            FFRoute(
              name: 'sea',
              path: 'sea',
              builder: (context, params) => SeaWidget(),
            ),
            FFRoute(
              name: 'sea_detail',
              path: 'seaDetail',
              builder: (context, params) => SeaDetailWidget(
                searef: params.getParam(
                    'searef', ParamType.DocumentReference, false, ['sea']),
              ),
            ),
            FFRoute(
              name: 'freshwater',
              path: 'freshwater',
              builder: (context, params) => FreshwaterWidget(),
            ),
            FFRoute(
              name: 'shop',
              path: 'shop',
              builder: (context, params) => ShopWidget(),
            ),
            FFRoute(
              name: 'shop_detail',
              path: 'shopDetail',
              builder: (context, params) => ShopDetailWidget(
                shopref: params.getParam(
                    'shopref', ParamType.DocumentReference, false, ['shop']),
              ),
            ),
            FFRoute(
              name: 'ticket_detail',
              path: 'ticketDetail',
              builder: (context, params) => TicketDetailWidget(
                ticketref: params.getParam('ticketref',
                    ParamType.DocumentReference, false, ['ticket']),
              ),
            ),
            FFRoute(
              name: 'used_detail',
              path: 'usedDetail',
              builder: (context, params) => UsedDetailWidget(
                usedref: params.getParam(
                    'usedref', ParamType.DocumentReference, false, ['Used']),
              ),
            ),
            FFRoute(
              name: 'used_Messenger',
              path: 'usedMessenger',
              builder: (context, params) => UsedMessengerWidget(
                users: params.getParam(
                    'users', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'shop_upload',
              path: 'shopUpload',
              builder: (context, params) => ShopUploadWidget(),
            ),
            FFRoute(
              name: 'shop_upload_used',
              path: 'shopUploadUsed',
              builder: (context, params) => ShopUploadUsedWidget(),
            ),
            FFRoute(
              name: 'shop_upload_Ticket',
              path: 'shopUploadTicket',
              builder: (context, params) => ShopUploadTicketWidget(),
            ),
            FFRoute(
              name: 'boarddefault',
              path: 'boarddefault',
              builder: (context, params) => BoarddefaultWidget(),
            ),
            FFRoute(
              name: 'boarddetail',
              path: 'boarddetail',
              builder: (context, params) => BoarddetailWidget(
                postdetail: params.getParam(
                    'postdetail', ParamType.DocumentReference, false, ['post']),
              ),
            ),
            FFRoute(
              name: 'recommenddetail',
              path: 'recommenddetail',
              builder: (context, params) => RecommenddetailWidget(
                recommendref: params.getParam('recommendref',
                    ParamType.DocumentReference, false, ['recommend']),
              ),
            ),
            FFRoute(
              name: 'boardreport',
              path: 'boardreport',
              builder: (context, params) => BoardreportWidget(
                postref: params.getParam(
                    'postref', ParamType.DocumentReference, false, ['post']),
                recommendref: params.getParam('recommendref',
                    ParamType.DocumentReference, false, ['recommend']),
              ),
            ),
            FFRoute(
              name: 'upload_post',
              path: 'uploadPost',
              builder: (context, params) => UploadPostWidget(),
            ),
            FFRoute(
              name: 'upload_recommend',
              path: 'uploadRecommend',
              builder: (context, params) => UploadRecommendWidget(),
            ),
            FFRoute(
              name: 'upload_rank',
              path: 'uploadRank',
              builder: (context, params) => UploadRankWidget(),
            ),
            FFRoute(
              name: 'otheruser',
              path: 'otheruser',
              builder: (context, params) => OtheruserWidget(
                userref: params.getParam(
                    'userref', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'editprofile',
              path: 'editprofile',
              builder: (context, params) => EditprofileWidget(),
            ),
            FFRoute(
              name: 'mypage',
              path: 'mypage',
              requireAuth: true,
              builder: (context, params) => MypageWidget(),
            ),
            FFRoute(
              name: 'ship_regist',
              path: 'shipRegist',
              builder: (context, params) => ShipRegistWidget(),
            ),
            FFRoute(
              name: 'lodge_regist',
              path: 'lodgeRegist',
              builder: (context, params) => LodgeRegistWidget(),
            ),
            FFRoute(
              name: 'sea_regist',
              path: 'seaRegist',
              builder: (context, params) => SeaRegistWidget(),
            ),
            FFRoute(
              name: 'MyPost_fishing',
              path: 'myPostFishing',
              builder: (context, params) => MyPostFishingWidget(
                mypost: params.getParam(
                    'mypost', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'MyPost_review',
              path: 'myPostReview',
              builder: (context, params) => MyPostReviewWidget(
                mypost: params.getParam(
                    'mypost', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'MyPost_Comments',
              path: 'myPostComments',
              builder: (context, params) => MyPostCommentsWidget(
                mypost: params.getParam(
                    'mypost', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'Game',
              path: 'game',
              builder: (context, params) => GameWidget(
                category: params.getParam('category', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'MyGame_User',
              path: 'myGameUser',
              builder: (context, params) => MyGameUserWidget(),
            ),
            FFRoute(
              name: 'MyGame_Company',
              path: 'myGameCompany',
              builder: (context, params) => MyGameCompanyWidget(),
            ),
            FFRoute(
              name: 'MyGame_Company_detail',
              path: 'myGameCompanyDetail',
              builder: (context, params) => MyGameCompanyDetailWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'MyGame_CompanyPlus',
              path: 'myGameCompanyPlus',
              builder: (context, params) => MyGameCompanyPlusWidget(),
            ),
            FFRoute(
              name: 'MyGame_Application_Management',
              path: 'myGameApplicationManagement',
              builder: (context, params) => MyGameApplicationManagementWidget(),
            ),
            FFRoute(
              name: 'Game_broadcast_Transmission',
              path: 'gameBroadcastTransmission',
              builder: (context, params) => GameBroadcastTransmissionWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'Game_score_Modify',
              path: 'gameScoreModify',
              builder: (context, params) => GameScoreModifyWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'Game_Cancellation_ask',
              path: 'gameCancellationAsk',
              builder: (context, params) => GameCancellationAskWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'Game_reports',
              path: 'gameReports',
              builder: (context, params) => GameReportsWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'reservelists',
              path: 'reservelists',
              builder: (context, params) => ReservelistsWidget(),
            ),
            FFRoute(
              name: 'notice',
              path: 'notice',
              builder: (context, params) => NoticeWidget(),
            ),
            FFRoute(
              name: 'noticedetail',
              path: 'noticedetail',
              builder: (context, params) => NoticedetailWidget(
                noticeref: params.getParam(
                    'noticeref', ParamType.DocumentReference, false, ['post']),
              ),
            ),
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'join',
              path: 'join',
              builder: (context, params) => JoinWidget(),
            ),
            FFRoute(
              name: 'findid',
              path: 'findid',
              builder: (context, params) => FindidWidget(),
            ),
            FFRoute(
              name: 'findpassword',
              path: 'findpassword',
              builder: (context, params) => FindpasswordWidget(),
            ),
            FFRoute(
              name: 'length',
              path: 'length',
              builder: (context, params) => LengthWidget(),
            ),
            FFRoute(
              name: 'my_shop_detail',
              path: 'myShopDetail',
              builder: (context, params) => MyShopDetailWidget(
                shopref: params.getParam(
                    'shopref', ParamType.DocumentReference, false, ['shop']),
              ),
            ),
            FFRoute(
              name: 'my_Ticket_detail',
              path: 'myTicketDetail',
              builder: (context, params) => MyTicketDetailWidget(
                ticketref: params.getParam('ticketref',
                    ParamType.DocumentReference, false, ['ticket']),
              ),
            ),
            FFRoute(
              name: 'my_used_detail',
              path: 'myUsedDetail',
              builder: (context, params) => MyUsedDetailWidget(
                usedref: params.getParam(
                    'usedref', ParamType.DocumentReference, false, ['Used']),
              ),
            ),
            FFRoute(
              name: 'vrPlace',
              path: 'vrPlace',
              builder: (context, params) => VrPlaceWidget(),
            ),
            FFRoute(
              name: 'gamePointInput',
              path: 'gamePointInput',
              builder: (context, params) => GamePointInputWidget(),
            ),
            FFRoute(
              name: 'chatgpt',
              path: 'chatgpt',
              builder: (context, params) => ChatgptWidget(),
            ),
            FFRoute(
              name: 'Game_invite',
              path: 'gameInvite',
              builder: (context, params) => GameInviteWidget(),
            ),
            FFRoute(
              name: 'fwater_detail',
              path: 'fwaterDetail',
              builder: (context, params) => FwaterDetailWidget(
                fwaterref: params.getParam('fwaterref',
                    ParamType.DocumentReference, false, ['fishingzone2']),
              ),
            ),
            FFRoute(
              name: 'fwater_regist',
              path: 'fwaterRegist',
              builder: (context, params) => FwaterRegistWidget(),
            ),
            FFRoute(
              name: 'CreateReview',
              path: 'createReview',
              builder: (context, params) => CreateReviewWidget(
                placeref: params.getParam('placeref',
                    ParamType.DocumentReference, false, ['fishingzone2']),
                lodgeref: params.getParam(
                    'lodgeref', ParamType.DocumentReference, false, ['lodge']),
                shipref: params.getParam(
                    'shipref', ParamType.DocumentReference, false, ['ship']),
                title: params.getParam('title', ParamType.String),
                s1: params.getParam('s1', ParamType.String),
                s2: params.getParam('s2', ParamType.String),
                s3: params.getParam('s3', ParamType.String),
                shopref: params.getParam(
                    'shopref', ParamType.DocumentReference, false, ['shop']),
                ticketref: params.getParam('ticketref',
                    ParamType.DocumentReference, false, ['ticket']),
                searef: params.getParam(
                    'searef', ParamType.DocumentReference, false, ['sea']),
              ),
            ),
            FFRoute(
              name: 'my_shop',
              path: 'myShop',
              builder: (context, params) => MyShopWidget(),
            ),
            FFRoute(
              name: 'CreateGame',
              path: 'createGame',
              builder: (context, params) => CreateGameWidget(),
            ),
            FFRoute(
              name: 'gamescreen',
              path: 'gamescrollCopy',
              requireAuth: true,
              builder: (context, params) => GamescreenWidget(
                contestRef: params.getParam('contestRef',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'Game_score_objection',
              path: 'gameScoreObjection',
              builder: (context, params) => GameScoreObjectionWidget(
                contestref: params.getParam('contestref',
                    ParamType.DocumentReference, false, ['contest']),
              ),
            ),
            FFRoute(
              name: 'test',
              path: 'test',
              builder: (context, params) => TestWidget(),
            ),
            FFRoute(
              name: 'HomePage2Copy',
              path: 'homePage2Copy',
              builder: (context, params) => HomePage2CopyWidget(),
            ),
            FFRoute(
              name: 'testsss',
              path: 'testsss',
              builder: (context, params) => TestsssWidget(),
            ),
            FFRoute(
              name: 'partner2',
              path: 'partner2',
              builder: (context, params) => Partner2Widget(),
            ),
            FFRoute(
              name: 'boarddefaultCopy',
              path: 'boarddefaultCopy',
              builder: (context, params) => BoarddefaultCopyWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/images/_35.png',
                      width: MediaQuery.of(context).size.width * 0.4,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
