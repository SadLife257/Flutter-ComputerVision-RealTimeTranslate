import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:translate_app/core/utilities/colors/AppColors.dart';
import 'package:translate_app/layers/data/country_code.dart';
import 'package:translator/translator.dart';

class TextScreen extends StatefulWidget {
  final String fromLanguage;
  final String toLanguage;

  const TextScreen({
    super.key,
    required this.fromLanguage,
    required this.toLanguage
  });

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final formKey = GlobalKey<FormState>();
  final _input_controller = TextEditingController();
  final _output_controller = TextEditingController();
  bool _isEmptyInput = true;
  // String output = "";

  void translating(String input) async{
    GoogleTranslator translator = GoogleTranslator();
    String? src = codes[widget.fromLanguage];
    String? dest = codes[widget.toLanguage];
    Translation translation;
    if(src != null && dest != null){
      translation = await translator.translate(input, from: src, to: dest);
      setState(() {
        // output = translation.text.toString();
        _output_controller.text = translation.text.toString();
      });
    }else{
      setState(() {
        // output = 'There seem to be an error !';
        _output_controller.text = 'There seem to be an error !';
      });
    }

    // else {
    //   if (widget.fromLanguage.toLowerCase().trim() == 'Language-Detection' &&
    //       dest != null) {
    //     translation = await translator.translate(input, to: dest);
    //     setState(() {
    //       _output_controller.text = translation.text.toString();
    //     });
    //   } else{
    //     setState(() {
    //       _output_controller.text = 'There seem to be an error !';
    //     });
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
                child: TextFormField(
                  controller: _input_controller,
                  cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter text here',
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    suffix: !_isEmptyInput ? IconButton(
                      style: Theme.of(context).iconButtonTheme.style,
                      alignment: Alignment.topRight,
                      onPressed: () {
                        _input_controller.clear();
                        setState(() {
                          _isEmptyInput = !_isEmptyInput;
                        });
                      },
                      icon: const Icon(Icons.clear)
                    ) : null,
                  ),
                  minLines: 1,
                  maxLines: 10,
                  onChanged: (value) {
                    setState(() {
                      _isEmptyInput = value.isEmpty;
                    });
                    if(value.isNotEmpty) translating(value.trim());
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: AnimatedOpacity(
                  curve: Curves.ease,
                  opacity: !_isEmptyInput ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 250),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 4,
                          color: Theme.of(context).colorScheme.secondary,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 75.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            15.0,
                            15.0,
                          ),
                        )
                      ],
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                style: Theme.of(context).iconButtonTheme.style,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.copy,
                                )
                            ),
                            IconButton(
                              style: Theme.of(context).iconButtonTheme.style,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.volume_up,
                                )
                            ),
                            IconButton(
                              style: Theme.of(context).iconButtonTheme.style,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.swap_horiz,
                              )
                            ),
                            IconButton(
                              style: Theme.of(context).iconButtonTheme.style,
                              onPressed: () {
                                setState(() {
                                  _isEmptyInput = !_isEmptyInput;
                                });
                              },
                              icon: const Icon(
                                Icons.clear
                              )
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: _output_controller,
                          enabled: false,
                          style: Theme.of(context).textTheme.bodyMedium,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,),
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,),
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          minLines: 1,
                          maxLines: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
