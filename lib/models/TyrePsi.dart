class TyrePsi {
  final double psi;
  final int temp;
  final bool isLowPressure;
  final bool isFront;

  TyrePsi({required this.psi, required this.temp, required this.isLowPressure,required this.isFront, });
}

final List<TyrePsi> demoPsiList = [
  TyrePsi(psi: 23.6, temp: 56, isLowPressure: true, isFront: true),
  TyrePsi(psi: 35.0, temp: 41, isLowPressure: false, isFront: true),
  TyrePsi(psi: 34.6, temp: 41, isLowPressure: false, isFront: false),
  TyrePsi(psi: 34.8, temp: 42, isLowPressure: false, isFront: false),
];
