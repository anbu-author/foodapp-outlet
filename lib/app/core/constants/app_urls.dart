class AppUrls {
  static const String baseUrl = 'http://159.89.161.169:5000';
  static const String user = '$baseUrl/api/outlet/auth/';

//onBoarding
  static const String signIn = '$user/login';
  static const String signUp = '$user/register';
  static const String dishList = '$baseUrl/api/outlet/dish/getDishes';
  static const String ongoingOrder = '$baseUrl/api/outlet/order/active';
}
