import 'package:get/route_manager.dart';
import 'package:radio_button/screens/home.dart';

routes() => [
      GetPage(
        name: '/home',
        page: () => HomePage(),
        transition: Transition.cupertino,
      ),
    ];
