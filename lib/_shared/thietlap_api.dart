/// Thiết lập các đường dẫn API

class Apis{
  static const log = false;
  // https://fakestoreapi.com
  static const domainUrl = 'http://demo47.ninavietnam.org/api';
  static const baseUrl = domainUrl;
  static const connectionTimeout = Duration(milliseconds: 15000);
  static const receiveTimeout = Duration(milliseconds: 15000);

  // Product
  static const listCategories = '$baseUrl/product_list';
  static const product = '$baseUrl/product';
  static const productDetail = '$baseUrl/productdetail';
  static const productInCategory = '$baseUrl/product_tab';
}