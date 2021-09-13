import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  int _valueRadio = 0;
  int get valueRadio => _valueRadio;

  @override
  void onInit() {
    super.onInit();
    cambio(1);
  }

  void cambio(int? value) {
    switch (value) {
      case 0:
        _valueRadio = value!;
        break;
      case 1:
        _valueRadio = value!;
        break;
      case 2:
        _valueRadio = value!;
        break;
    }
    update();
  }
}
