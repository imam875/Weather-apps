class ModelData {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  int? timezone;
  int? id;
  String? name;
  Sys? sys;

  ModelData(this.coord, this.weather, this.base, this.visibility, this.wind,
      this.clouds, this.dt, this.timezone, this.id, this.name, this.sys);

  ModelData.fromJson(Map<String, dynamic> Mo) {
    coord = Mo['coord'];
    weather = Mo['weather']??"";
    base = Mo['base']??"";
    visibility = Mo['visibility']??0;
    wind = Mo['wind']??"";
    clouds = Mo['clouds']??"";
    dt = Mo['dt']?0;
    timezone = Mo['timezone']??"";
    id = Mo['id']??0;
    name = Mo['name']??"";
    sys = Mo['sys'];
  }
}

class Coord {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  Coord.fromJson(Map<dynamic, dynamic> Co) {
    lon = Co['lon']??"";
    lat = Co['lat']??"";
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<dynamic, dynamic> Wr) {
    id = Wr['id']??"";
    main = Wr['main']??"";
    description = Wr['description']??"";
    icon = Wr['icon']??"";
  }
}

class Wind {
  double? speed;
  int? deg;
  double? gust;

  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<dynamic, dynamic> Wi) {
    speed = Wi['speed']??"";
    deg = Wi['deg']??"";
    gust = Wi['gust']??"";
  }
}

class Clouds {
  int? all;

  Clouds({this.all});

  Clouds.fromJson(Map<dynamic, dynamic> Cl) {
    all = Cl['all'];
  }
}

class Sys {
  String? country;
  int? sunrise;
  int? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<dynamic, dynamic> Sy) {
    country = Sy['country']??"";
    sunrise = Sy['sunrise']??"";
    sunset = Sy['sunset']??"";
  }
}
