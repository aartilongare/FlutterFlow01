import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginPageWidget(),
          routes: [
            FFRoute(
              name: 'LoginPage',
              path: 'loginPage',
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: 'AUDITCopy',
              path: 'aUDITCopy',
              builder: (context, params) => AUDITCopyWidget(
                companyname: params.getParam('companyname', ParamType.JSON),
                auditcode: params.getParam('auditcode', ParamType.String),
                typecode: params.getParam('typecode', ParamType.String),
                locationname: params.getParam('locationname', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'TOONFORMULIER05change',
              path: 'tOONFORMULIER05change',
              builder: (context, params) => TOONFORMULIER05changeWidget(
                companyname: params.getParam('companyname', ParamType.String),
                companycode: params.getParam('companycode', ParamType.String),
                typecode: params.getParam('typecode', ParamType.String),
                location: params.getParam('location', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'TOONFORMULIER04',
              path: 'toonformulier04',
              builder: (context, params) => Toonformulier04Widget(),
            ),
            FFRoute(
              name: 'TOONFORMULIER07',
              path: 'toonformulier07',
              builder: (context, params) => Toonformulier07Widget(),
            ),
            FFRoute(
              name: 'toonformulier09',
              path: 'toonformulier09',
              builder: (context, params) => Toonformulier09Widget(
                loading: params.getParam('loading', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'TOONFORMULIER',
              path: 'toonformulier',
              builder: (context, params) => ToonformulierWidget(),
            ),
            FFRoute(
              name: 'TOONFORMULIER01',
              path: 'toonformulier01',
              builder: (context, params) => Toonformulier01Widget(
                theperameter: params.getParam('theperameter', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Toonformulier03',
              path: 'toonformulier03',
              builder: (context, params) => Toonformulier03Widget(),
            ),
            FFRoute(
              name: 'Settings01photo',
              path: 'settings01photo',
              builder: (context, params) => Settings01photoWidget(),
            ),
            FFRoute(
              name: 'Loadingpage',
              path: 'loadingpage',
              builder: (context, params) => LoadingpageWidget(
                loading: params.getParam('loading', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'qualitycheckCopy',
              path: 'qualitycheckCopy',
              builder: (context, params) => QualitycheckCopyWidget(
                loading: params.getParam('loading', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'qualitycheck',
              path: 'qualitycheck',
              builder: (context, params) => QualitycheckWidget(
                loading: params.getParam('loading', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'TOONFORMULIer08',
              path: 'tOONFORMULIer08',
              builder: (context, params) => TOONFORMULIer08Widget(),
            ),
            FFRoute(
              name: 'toonformulier06',
              path: 'toonformulier06',
              builder: (context, params) => Toonformulier06Widget(
                loading: params.getParam('loading', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Caregorie1',
              path: 'caregorie1',
              builder: (context, params) => Caregorie1Widget(),
            ),
            FFRoute(
              name: 'Settings01',
              path: 'settings01',
              builder: (context, params) => Settings01Widget(),
            ),
            FFRoute(
              name: 'SettingsphotoUpdate',
              path: 'settingsphotoUpdate',
              builder: (context, params) => SettingsphotoUpdateWidget(),
            ),
            FFRoute(
              name: 'Caregori02',
              path: 'caregori02',
              builder: (context, params) => Caregori02Widget(),
            ),
            FFRoute(
              name: 'Settings02',
              path: 'settings02',
              builder: (context, params) => Settings02Widget(),
            ),
            FFRoute(
              name: 'SettingsphotoSelect',
              path: 'settingsphotoSelect',
              builder: (context, params) => SettingsphotoSelectWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
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
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
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
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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
