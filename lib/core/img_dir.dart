const assetPath = 'assets/';
String image(String imageName, {String type = 'png'}) {
  return '$assetPath/$imageName.$type';
}

class ImageOf {
  //========================== ICON AND Image=================
  static String cart = image('cart');
  static String topUp = image('top-up');
  static String addMoney = image('add-money');
  //==========================Card Type=======================
  static String visaCard = image('visa_card');
  static String masterCard = image('master_card');
}
