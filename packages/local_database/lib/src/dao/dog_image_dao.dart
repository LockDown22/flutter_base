import 'package:floor/floor.dart';
import 'package:local_database/src/entities/dog_image_entity.dart';

@dao
abstract class DogImageDao {
  @Query('SELECT * FROM DogImageEntity')
  Future<List<DogImageEntity>> findAllDogImages();

  @insert
  Future<void> insertDogImage(DogImageEntity dogImageEntity);

  @Query('DELETE FROM DogImageEntity WHERE message = :message')
  Future<DogImageEntity?> deleteDogImage(String message);
}