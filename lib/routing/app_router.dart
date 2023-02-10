import 'package:daily_cd_player/data/view/archive_view/archive_view.dart';
import 'package:daily_cd_player/data/view/home_view/home_view.dart';
import 'package:daily_cd_player/data/view/onboarding_view/presentation/onboarding_screen.dart';
import 'package:daily_cd_player/data/view/recommend_view/recommend_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

import '../data/repository/firebase_auth_repository.dart';
import '../data/view/onboarding_view/data/onboarding_repository.dart';
import 'go_router_refresh_stream.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

enum AppRoute {
  onboarding,
  recommend,
  home,
  archive,
  test,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final onboardingRepository = ref.watch(onboardingRepositoryProvider);
  return GoRouter(
    initialLocation: '/${AppRoute.home.name}',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final didCompleteOnboarding = onboardingRepository.isOnboardingComplete();
      if (!didCompleteOnboarding) {
        // Always check state.subloc before returning a non-null route
        // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/redirection.dart#L78
        if (state.subloc != '/${AppRoute.onboarding}') {
          return '/${AppRoute.onboarding}';
        }
      }
      final isLoggedIn = authRepository.currentUser != null;
      // if (isLoggedIn) {
      //   if (state.subloc.startsWith('/signIn')) {
      //     return '/jobs';
      //   }
      // } else {
      //   if (state.subloc.startsWith('/jobs') ||
      //       state.subloc.startsWith('/entries') ||
      //       state.subloc.startsWith('/account')) {
      //     return '/signIn';
      //   }
      // }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
        path: '/${AppRoute.onboarding.name}',
        name: AppRoute.onboarding.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingScreen(),
        ),
      ),

      GoRoute(
        path: '/${AppRoute.home.name}',
        name: AppRoute.home.name,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const HomeView(),
        ),
        routes: [
          GoRoute(
            path: AppRoute.archive.name,
            name: AppRoute.archive.name,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: const ArchiveView(),
            ),
          ),

          GoRoute(
            path: AppRoute.recommend.name,
            name: AppRoute.recommend.name,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: const RecommendView(),
            ),
          ),
          // GoRoute(
          //   path: 'emailPassword',
          //   name: AppRoute.emailPassword.name,
          //   pageBuilder: (context, state) => MaterialPage(
          //     key: state.pageKey,
          //     fullscreenDialog: true,
          //     child: const EmailPasswordSHomeViewgnInScreen(
          //       formType: EmailPasswordSignInFormType.signIn,
          //     ),
          //   ),
          // ),
        ],
      ),
      // ShellRoute(
      //   navigatorKey: _shellNavigatorKey,
      //   builder: (context, state, child) {
      //     return ScaffoldWithBottomNavBar(child: child);
      //   },
      //   routes: [
      //     GoRoute(
      //       path: '/jobs',
      //       name: AppRoute.jobs.name,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         key: state.pageKey,
      //         child: const JobsScreen(),
      //       ),
      //       routes: [
      //         GoRoute(
      //           path: 'add',
      //           name: AppRoute.addJob.name,
      //           parentNavigatorKey: _rootNavigatorKey,
      //           pageBuilder: (context, state) {
      //             return MaterialPage(
      //               key: state.pageKey,
      //               fullscreenDialog: true,
      //               child: const EditJobScreen(),
      //             );
      //           },
      //         ),
      //         GoRoute(
      //           path: ':id',
      //           name: AppRoute.job.name,
      //           pageBuilder: (context, state) {
      //             final id = state.params['id']!;
      //             return MaterialPage(
      //               key: state.pageKey,
      //               child: JobEntriesScreen(jobId: id),
      //             );
      //           },
      //           routes: [
      //             GoRoute(
      //               path: 'entries/add',
      //               name: AppRoute.addEntry.name,
      //               parentNavigatorKey: _rootNavigatorKey,
      //               pageBuilder: (context, state) {
      //                 final jobId = state.params['id']!;
      //                 return MaterialPage(
      //                   key: state.pageKey,
      //                   fullscreenDialog: true,
      //                   child: EntryScreen(
      //                     jobId: jobId,
      //                   ),
      //                 );
      //               },
      //             ),
      //             GoRoute(
      //               path: 'entries/:eid',
      //               name: AppRoute.entry.name,
      //               pageBuilder: (context, state) {
      //                 final jobId = state.params['id']!;
      //                 final entryId = state.params['eid']!;
      //                 final entry = state.extra as Entry?;
      //                 return MaterialPage(
      //                   key: state.pageKey,
      //                   child: EntryScreen(
      //                     jobId: jobId,
      //                     entryId: entryId,
      //                     entry: entry,
      //                   ),
      //                 );
      //               },
      //             ),
      //             GoRoute(
      //               path: 'edit',
      //               name: AppRoute.editJob.name,
      //               pageBuilder: (context, state) {
      //                 final jobId = state.params['id'];
      //                 final job = state.extra as Job?;
      //                 return MaterialPage(
      //                   key: state.pageKey,
      //                   fullscreenDialog: true,
      //                   child: EditJobScreen(jobId: jobId, job: job),
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     GoRoute(
      //       path: '/entries',
      //       name: AppRoute.entries.name,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         key: state.pageKey,
      //         child: const EntriesScreen(),
      //       ),
      //     ),
      //     GoRoute(
      //       path: '/account',
      //       name: AppRoute.account.name,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         key: state.pageKey,
      //         child: const AccountScreen(),
      //       ),
      //     ),
      //   ],
      // ),
    ],
    //errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
