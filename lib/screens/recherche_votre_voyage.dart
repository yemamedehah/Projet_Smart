import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/widget/my_button.dart';
import 'package:projet_smart/widget/my_text_filed.dart';
import 'package:projet_smart/widget/my_dropdown.dart';
import 'package:projet_smart/screens/resultats_recherche_screen.dart';
import '../app_constants.dart';
import '../utils.dart';
import '../controllers/vols_controller.dart';
import '../services/firebase_service.dart';


class MyVols extends StatefulWidget {
  const MyVols({super.key});

  @override
  State<MyVols> createState() => _MyVolsState();
}

class _MyVolsState extends State<MyVols> {
  final VolsController _volsController = Get.put(VolsController());
  final FirebaseService _firebaseService = FirebaseService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      //form qui permet a user de chercher voyage en saisier cette donnee
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF0044A5),
              ),
              child: Column(
                children: [
                  // Row 1
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: MyTextFiled(
                            hint: "A partir de",
                            controller: _volsController.originController,
                            textColor: Colors.white,
                            hintColor: Colors.white,
                            borderColor: Colors.white,
                          ),
                        ),
                        SizedBox(width: 40.0),
                        Expanded(
                          child: MyTextFiled(
                            hint: "A",
                            controller: _volsController.destinationController,
                            textColor: Colors.white,
                            hintColor: Colors.white,
                            borderColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Row 2
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: MyTextFiled(
                            hint: "Date",
                            controller: _volsController.dateController,
                            textColor: Colors.white,
                            hintColor: Colors.white,
                            borderColor: Colors.white,
                          ),
                        ),
                        SizedBox(width: 40.0),
                        
                        Expanded(
                          child: MyDropdown(
                            title: "Type",
                            controller: _volsController.typeController,
                            items: ["One Way", "Round Trip", "Multi-city"],
                            textColor: Colors.white,
                            borderColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Row 3
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: MyTextFiled(
                            hint: "Passagers",
                            controller: _volsController.passagersController,
                            textColor: Colors.white,
                            hintColor: Colors.white,
                            borderColor: Colors.white,
                          ),
                        ),
                        SizedBox(width: 40.0),
                        Expanded(

                          child: MyDropdown(
                            title: "Classe",
                            controller: _volsController.classController,
                            items: ["Economy", "Business", "First Class"],
                            textColor: Colors.white,
                             borderColor: Colors.white,
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: fullHeight(context) * 0.01),
          Center(
            child: Container(
              width: fullWidth(context) * 0.3,
              height: fullHeight(context) * 0.1,
              child:
               Obx(() => _volsController.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
            :
              MyButton(
  onPressed: () async {
    if (_formKey.currentState!.validate()) {
      _volsController.setIsLoading(true);
      int passengers = int.tryParse(_volsController.passagersController.text) ?? 0;

      try {
        // Call the function to search for vols
        await _firebaseService.searchvols(
          _volsController.originController.text,
          _volsController.destinationController.text,
          _volsController.dateController.text,
          _volsController.typeController.text,
          passengers,
          _volsController.classController.text,
        );

        // Regardless of the search result, navigate to the next screen
        _volsController.setIsLoading(false);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultatsRecherche()),
        );
      } catch (error) {
        // Handle errors here
        _volsController.setIsLoading(false);
        showSnackbarError('Error: $error');
      }
    }
  },
  title: 'Recherche',
),
),
              
              
            
            ),
          ),
        ],
      ),
    );
  }
}
