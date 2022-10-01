class Turbine{
  String name,value;
  DeviceState state;
  Turbine({required this.name,required this.value, required this.state});
}

enum DeviceState{
  active,
  inActive,
}