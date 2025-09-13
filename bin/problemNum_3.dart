abstract class Appliance {
  void turnOn();   // abstract method
  void turnOff();  // abstract method
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan is turned off.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

void main() {
  Fan fan = Fan();
  Light light = Light();

  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}
