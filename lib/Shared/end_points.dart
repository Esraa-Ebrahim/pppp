class AppEndPoints {
  /// Endpoint => baseUrl+path

  static const String baseUrl = 'http://attendance.first-meeting.net/api';

  // post
  static String registerSchedule = '${baseUrl}/regschd';
  // get
  static String showSubject = '${baseUrl}/showsubject';
}
