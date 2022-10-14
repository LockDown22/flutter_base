import 'package:local_database/local_database.dart';
import 'package:rest_client/rest_client.dart';

class MapperUtils {
  MapperUtils._();

  static DogImageEntity mapDogImage(DogImage dogImage) {
    return DogImageEntity(
      dogImage.message,
      dogImage.status,
    );
  }
}
