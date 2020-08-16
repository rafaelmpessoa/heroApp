import 'package:hero_app/hero/domain/entities/hero.dart' as domain;
import 'package:hero_app/hero/domain/entities/hero.dart';

final mockedHeroes = [
  domain.Hero(
    id: "1",
    biography: Biography(fullName: "Mocked Hero", placeOfBirth: "MOCKED PLACE"),
    name: "Mocked Hero Name",
    image: domain.HeroImage(
      url: "https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg",
    ),
    powerstats: domain.PowerStats(
      combat: 0,
      durability: 0,
      intelligence: 0,
      power: 0,
      speed: 0,
      strength: 0,
    ),
  ),
  domain.Hero(
    id: "2",
    biography:
        Biography(fullName: "Mocked Hero 2", placeOfBirth: "MOCKED PLACE"),
    name: "Mocked Hero Name 2",
    powerstats: domain.PowerStats(
      combat: 0,
      durability: 0,
      intelligence: 0,
      power: 0,
      speed: 0,
      strength: 0,
    ),
    image: domain.HeroImage(
      url: "https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg",
    ),
  )
];
