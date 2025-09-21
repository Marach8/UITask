extension StringExtensions on String {

  String get addSlash => '/$this';

  String get capitalize => isEmpty ? this : this[0].toUpperCase() + substring(1).toLowerCase();

  String get png => 'assets/images/pngs/$this.png';
  String get svg => 'assets/images/svgs/$this.svg';
}
