import 'package:nasa_wind_app/modules/land_turbines/models/turbine.dart';

class TurbinesRepo{
  List<Turbine> dataActive = [
    Turbine(name: "Wind Turbine #500", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #521", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #600", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #490", value: "value", state: DeviceState.active),
  ];
  List<Turbine> dataInActive = [
    Turbine(name: "Wind Turbine #620", value: "value", state: DeviceState.inActive),
    Turbine(name: "Wind Turbine #210", value: "value", state: DeviceState.inActive),
    Turbine(name: "Wind Turbine #501", value: "value", state: DeviceState.inActive),
  ];
  List<Turbine> data = [
    
    Turbine(name: "Wind Turbine #500", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #521", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #600", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #490", value: "value", state: DeviceState.active),
    Turbine(name: "Wind Turbine #620", value: "value", state: DeviceState.inActive),
    Turbine(name: "Wind Turbine #210", value: "value", state: DeviceState.inActive),
    Turbine(name: "Wind Turbine #501", value: "value", state: DeviceState.inActive),
  ];

}