
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
  String get type {
    return sightTypes.keys.contains(_type) ? sightTypes[_type]! : 'Категория';
  } 
  Sight(this.name, this.lat, this.lon, this.url, this.details, this._type);
}
