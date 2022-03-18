
String PHOTO_URL = "";
String getFullLinkMedia(String? url) {
  if (url?.isNotEmpty == true) {
    return url!.contains("http") ? url : PHOTO_URL + url;
  } else {
    return "";
  }
}