// Smart Home Automation
void main() {
  Device livingLight = Light();
  Device AirConditioner1 = AirConditioner();
  Device Camera1 = SecurityCameras();
}

class Device {
  bool _condition = false;

  void turnOn() {
    this._condition = true;
    print('${runtimeType} is now ON');
  }

  void turnOff() {
    this._condition = false;
    print('${runtimeType} is now OFF');
  }

  bool get condition => this._condition;
}

class Light extends Device {
  
}

class AirConditioner extends Device {
  int _temperature = 24;

  void setTemperature(int temp) {
    if (condition) {
      _temperature = temp;
      print('Air Conditioner set to ${_temperature}°C');
    } else {
      print('Turn on the AC first.');
    }
  }
}

class SecurityCameras extends Device {
  bool _motionDetectionEnabled = false;

  void enableMotionDetection() {
    if (condition) {
      _motionDetectionEnabled = true;
      print('Motion Detection Enabled');
    } else {
      print('Turn on the Camera first.');
    }
  }
}