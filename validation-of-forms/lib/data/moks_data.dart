import 'package:surf_flutter_courses_template/assets/res.dart';
import 'package:surf_flutter_courses_template/domain/models/pet_model.dart';

final pets = [
  PetModel(
    title: 'Собака',
    icon: AppAssets.iconDog,
    active: false,
    isVaccination: true,
  ),
  PetModel(
    title: 'Кошка',
    icon: AppAssets.iconCat,
    active: false,
    isVaccination: true,
  ),
  PetModel(
    title: 'Попугай',
    icon: AppAssets.iconParrot,
    active: false,
    isVaccination: false,
  ),
  PetModel(
    title: 'Хомяк',
    icon: AppAssets.iconHamster,
    active: false,
    isVaccination: false,
  ),
];
