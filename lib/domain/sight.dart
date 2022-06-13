const Map<int,String> sightTypes = {
  1: 'Ресторан',
  2: 'Кафе',
  3: 'Музей', 
  4: 'Мистическое сооружение',
  5: 'Зоопарк',
};

class Sight {
  final int _type;
  String name;
  double lat;
  double lon;
  String url;
  String details;
  bool favorite;
  DateTime? scheduled;
  DateTime? visited;
  DateTime? closedUntil;
  String get type {
    return sightTypes.keys.contains(_type) ? sightTypes[_type]! : 'Категория';
  } 
  Sight(this.name, this.lat, this.lon, this.url, this.details, this._type,
      {this.favorite=false, this.scheduled, this.visited,
        this.closedUntil,}) {
    closedUntil ??= DateTime.parse('0000-00-00 09:00:00');
  }


}

/*class SightFavorite extends Sight {
  DateTime? scheduled;
  DateTime? visited;
  SightFavorite(Sight sight, {} )
}*/
