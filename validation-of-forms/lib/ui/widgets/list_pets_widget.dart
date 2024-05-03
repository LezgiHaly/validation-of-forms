// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/assets/res.dart';
import 'package:surf_flutter_courses_template/ui/model/pet_card_model.dart';

class ListPetsWidget extends StatelessWidget {
  final void Function(Pet pet) onTap;
  ValueNotifier<Pet> pets = ValueNotifier<Pet>(Pet.dog);
  ListPetsWidget({
    super.key,
    required this.onTap,
    required this.pets,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pets,
      builder: (context, value, child) {
        return Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            for (final pet in Pet.values)
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: PetCardModel(
                  title: getPet(pet),
                  icon: getImage(pet),
                  active: value == pet,
                  onTap: () => onTap(pet),
                ),
              )
          ],
        );
      },
    );
  }
}

enum Pet {
  dog,
  cat,
  parrot,
  hamster,
}

String getPet(Pet pet) {
  switch (pet) {
    case Pet.dog:
      return 'Собака';
    case Pet.cat:
      return 'Кошка';
    case Pet.parrot:
      return 'Попугай';
    case Pet.hamster:
      return 'Хомяк';
    default:
      return '';
  }
}

String getImage(Pet pet) {
  switch (pet) {
    case Pet.dog:
      return AppAssets.iconDog;
    case Pet.cat:
      return AppAssets.iconCat;
    case Pet.parrot:
      return AppAssets.iconParrot;
    case Pet.hamster:
      return AppAssets.iconHamster;
    default:
      return '';
  }
}
