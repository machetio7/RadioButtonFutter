import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:radio_button/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (home) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text('Radio Button'),
              ),
              body: Container(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                width: size.width,
                height: size.height,
                color: Colors.yellow,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Radio Button',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RadioButton(size: size),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(),
                    Container(
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Center(
                        child: Text(
                          'Informacion del Radio Button: ${home.valueRadio + 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class RadioButton extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (home) {
        return Container(
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Radio(
                    value: 0,
                    groupValue: home.valueRadio,
                    onChanged: home.cambio),
              ),
              Transform.translate(
                offset: Offset(-15, 0),
                child: Text('Opción 1'),
              ),
              Expanded(
                child: Radio(
                    value: 1,
                    groupValue: home.valueRadio,
                    onChanged: home.cambio),
              ),
              Transform.translate(
                offset: Offset(-15, 0),
                child: Text('Opción 2'),
              ),
              Expanded(
                child: Radio(
                    value: 2,
                    groupValue: home.valueRadio,
                    onChanged: home.cambio),
              ),
              Transform.translate(
                offset: Offset(-15, 0),
                child: Text('Opción 3'),
              ),
            ],
          ),
        );
      },
    );
  }
}
