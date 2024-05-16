class QRCodeData {
  final String image;
  final String name;
  final String unit;
  final String color;
  final String externalInspection;
  final String length;
  final String width;
  final String grossWeight;
  final String netWeight;
  final String attribute;
  final String isQualityChecked;

  QRCodeData(
      {required this.image,
      required this.name,
      required this.unit,
      required this.color,
      required this.externalInspection,
      required this.length,
      required this.width,
      required this.grossWeight,
      required this.netWeight,
      required this.attribute,
      required this.isQualityChecked});
}
