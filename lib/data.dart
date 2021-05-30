class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
      {this.position,
      this.name,
      this.iconImage,
      this.description,
      this.images});
}

List<PlanetInfo> planets = [
  PlanetInfo(
      position: 1,
      name: 'Mercury',
      iconImage:
          'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      description: 'Descript',
      images: [
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      ]),
  PlanetInfo(
      position: 2,
      name: 'Venera',
      iconImage:
          'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      description: 'Descript',
      images: [
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      ]),
  PlanetInfo(
      position: 3,
      name: 'Earth',
      iconImage:
          'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      description: 'Descript',
      images: [
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      ]),
  PlanetInfo(
      position: 4,
      name: 'Mars',
      iconImage:
          'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      description: 'Descript',
      images: [
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
        'assets/image/mlechnyj_put_zvezdnoe_nebo_zvezdy_128523_1280x1024.jpg',
      ]),
];
