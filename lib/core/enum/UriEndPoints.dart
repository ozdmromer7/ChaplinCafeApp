
enum UriEndPoints {
  login(endPoint : '/Customer/login-user'),
  register(endPoint: '') ;

  final String endPoint;

  const UriEndPoints({required this.endPoint});

}

