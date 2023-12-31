import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VolsController extends GetxController {
TextEditingController originController = TextEditingController();
  TextEditingController destinationController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController passengersController = TextEditingController();
  TextEditingController classController = TextEditingController();
  var isLoading = false.obs;

  setIsLoading(bool newValue) {
    isLoading.value = newValue;
  }
}
