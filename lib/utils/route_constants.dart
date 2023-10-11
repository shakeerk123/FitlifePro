import 'package:fitness_app/app/view/Gnav/gnav_navigation.dart';
import 'package:fitness_app/app/view/profile/profile_screen.dart';
import 'package:fitness_app/app/view/workout_details/ui/workout_detail_screen.dart';
import 'package:fitness_app/app/view/workout_tracker/workouttracker_screen.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => const GnavNavigation(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/second',
        page: () => WorkoutScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/third',
        page: () => ProfileScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/details',
        page: () => WorkoutDetails(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}