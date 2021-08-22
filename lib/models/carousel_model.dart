class CarouselModel {
  String? image;

  CarouselModel(this.image);
}

List<CarouselModel?> carousels =
    carouselListData.map((item) => CarouselModel(item['image'])).toList();

var carouselListData = [
  {"image": "assets/images/carousel_flight_discount.png"},
  {"image": "assets/images/carousel_hotel_discount.png"},
  {"image": "assets/images/carousel_covid_discount.png"}
];
