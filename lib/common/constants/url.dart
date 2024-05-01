class URL {
  static String host = "https://app.jala.tech";
  static String version = "/v1";
  static String api = "api";
  static String base = '$host/$api';
  static String hostWebview = '$host/web_view';
  static String avatar(String avatarPath) => '$host/storage/$avatarPath';
  static String diseases = '$base/diseases';
  static String posts = '$base/posts';
  static String shareDisease(int id) => '$host/diseases/$id';
  static String sharePost(int id) => '$host/posts/$id';
  static String webviewDisease(int id) => '$hostWebview/diseases/$id';
  static String webviewPost(int id) => '$hostWebview/posts/$id';
}
