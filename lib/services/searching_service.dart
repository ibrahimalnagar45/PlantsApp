import 'package:plantapp/models/plant_information_model.dart';

import '../pages/Home_page.dart';

PlantModel? Isexit(String data) {
  for (var i = 0; i < plants.length; i++) {
    if (data.toUpperCase() == plants[i].name) {
      return plants[i];
    } else {
      return null;
    }
  }
}
