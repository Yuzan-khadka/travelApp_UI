class Transport {
  String imageUrl;
  String name;

  Transport({
    this.imageUrl,
    this.name,
  });
}

final List<Transport> transports = [
  Transport(
    imageUrl: 'assets/images/flight.jpg',
    name: 'Flights',
  ),
  Transport(
    imageUrl: 'assets/images/train.jpg',
    name: 'Trains',
  ),
  Transport(
    imageUrl: 'assets/images/car.jpg',
    name: 'Cars',
  ),
];
