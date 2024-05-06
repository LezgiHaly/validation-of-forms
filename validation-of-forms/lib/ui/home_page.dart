import 'dart:async';

import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';
import 'package:surf_flutter_courses_template/domain/models/validators.dart';
import 'package:surf_flutter_courses_template/ui/model/input_field.dart';
import 'package:surf_flutter_courses_template/ui/widgets/date_picker.dart';
import 'package:intl/intl.dart';
import 'package:surf_flutter_courses_template/ui/widgets/list_pets_widget.dart';
import 'package:surf_flutter_courses_template/ui/widgets/sent_button_widget.dart';
import 'package:surf_flutter_courses_template/ui/widgets/vaccinations_widget.dart';


/// Основной Экран приложения

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  final _controllerName = TextEditingController();
  final _controllerDate = TextEditingController();
  final _controllerWeight = TextEditingController();
  final _controllerEmail = TextEditingController();
  ValueNotifier<Pet> pets = ValueNotifier<Pet>(Pet.dog);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable: pets,
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              /// Добавляем карточки питомцев
              ListPetsWidget(
                onTap: (Pet pet) {
                  pets.value = pet;
                  _controllerName.clear();
                  _controllerDate.clear();
                  _controllerWeight.clear();
                  _controllerEmail.clear();
                },
                pets: pets,
              ),
              const SizedBox(
                height: 32,
              ),
              /// Поля для ввода данных питомцев
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputField(
                      title: AppStrings.petName,
                      validator: nameValidate,
                      controller: _controllerName,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InputField(
                      title: AppStrings.petBirsday,
                      validator: dateValidate,
                      controller: _controllerDate,
                      keyboardType: TextInputType.datetime,
                      onTap: () async {
                        DateTime? pickedDate = await datePicker(
                          context: context,
                        );
                        if (pickedDate != null) {
                          _controllerDate.text =
                              DateFormat('dd.MM.yyyy').format(pickedDate);
                        }
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InputField(
                      title: AppStrings.petWeight,
                      validator: weightValidate,
                      controller: _controllerWeight,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InputField(
                      title: AppStrings.email,
                      validator: emailValidate,
                      controller: _controllerEmail,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              /// отображение полей ввода вациназии в зависимости от питомца
              if (value != Pet.hamster && value != Pet.parrot)
                VaccinationsWidget(
                  controllerTextField: _controllerDate,
                ),
              const SizedBox(
                height: 32,
              ),
              /// Кнопка отправки данных
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SentButtonWidget(
                  onPressed: () {
                    setState(() {
                      _isLoading = true;
                    });
                    if (_formKey.currentState!.validate()) { /// если поля ввода заполнены данные отправятся
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Успех'),
                        ),
                      );
                    }
                    Timer.periodic(const Duration(seconds: 2), (timer) {
                      setState(() {
                        _isLoading = false;
                      });
                    });
                  },
                  loading: _isLoading,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          );
        },
      ),
    );
  }
}
