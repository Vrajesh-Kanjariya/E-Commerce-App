class ApiConstants {

  static String purchaseCode = "19ef956885f2";
  static String systemKey = "19ef956885f2";

  static const int serviceTimeout = 60;

  static String defaultLanguage = "en";
  static String mobileAppCode = "en";

  static const bool HTTPS = true;

  //do not configure these below
  // static const domainPath = "indiazonaportal.addonwebtech.com"; //localhost
  static const domainPath = "portal.indiazona.in"; //localhost
  static const String apiEndPath = "api/v2";
  static const String protocol = HTTPS ? "https://" : "http://";
  static const String rawBaseUrl = "$protocol$domainPath";
  static const String baseUrl = "$rawBaseUrl/$apiEndPath";

}