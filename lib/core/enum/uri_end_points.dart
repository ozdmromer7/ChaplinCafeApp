enum UriEndPoints {
  login(endPoint: '/Customer/login-user'),
  register(endPoint: '/Customer/create-user'),
  getCustomerInfo(endPoint: '/Customer/get-customer-information'),
  getProductCardList(endPoint: '/ProductCard/get-product-card-list'),
  branches(endPoint: '/Branch/get-branches');

  final String endPoint;

  const UriEndPoints({required this.endPoint});
}
