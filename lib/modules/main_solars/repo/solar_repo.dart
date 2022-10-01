import 'dart:math';

import 'package:nasa_wind_app/modules/land_turbines/models/turbine.dart';
import 'package:nasa_wind_app/modules/main_solars/models/solar.dart';

class SolarRepo{
  List<Solar> dataActive = [
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
  ];
  List<Solar> dataInActive = [
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.inActive),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.inActive),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.inActive),
  ];
  List<Solar> data = [
    
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.active),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.inActive),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.inActive),
    Solar(name: " Solar #${Random().nextInt(100)}", value: "value", state: DeviceState.inActive),
  ];

}