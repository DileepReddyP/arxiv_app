import 'package:arxiv_app/utils/constants.dart';
import 'package:arxiv_app/utils/query_constructor.dart';
import 'package:arxiv_app/state/query_state.dart';
import 'package:arxiv_app/state/sidebar_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  String _dropdown = arxivCategories.keys.first;
  String _value = '';
  ArxivField _field = ArxivField.all;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer2<SidebarState, QueryState>(
        builder: (context, sidebarState, queryState, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'in field:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              DropdownButtonFormField<ArxivField>(
                //selectedItemBuilder: (context) => ,
                value: _field,
                isExpanded: true,
                isDense: true,
                decoration: Constants.dropdownDecor,
                onChanged: (ArxivField? newValue) {
                  setState(() {
                    _field = newValue!;
                  });
                },
                selectedItemBuilder: (context) => arxivFields
                    .map<ArxivField, Widget>(
                      (key, value) => MapEntry(
                        key,
                        Text(value),
                      ),
                    )
                    .values
                    .toList(),
                items: arxivFieldNamesForDropDown
                    .map<ArxivField, DropdownMenuItem<ArxivField>>(
                      (ArxivField value, String valueName) => MapEntry(
                        value,
                        DropdownMenuItem(
                          value: value,
                          child: SizedBox(
                            child: Text(valueName),
                            width: 300,
                          ),
                        ),
                      ),
                    )
                    .values
                    .toList(),
              ),
              const Text(
                'search for:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              _field != ArxivField.category
                  ? TextFormField(
                      cursorColor: Colors.red.shade700,
                      decoration: Constants.textFieldDecor,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        _value = value;
                        return null;
                      },
                    )
                  : DropdownButtonFormField<String>(
                      isDense: true,
                      isExpanded: true,
                      //icon: Container(),
                      value: _dropdown,
                      decoration: Constants.dropdownDecor,
                      onChanged: (String? newValue) {
                        setState(() {
                          _dropdown = newValue!;
                        });
                      },
                      selectedItemBuilder: (context) => arxivCategories
                          .map<String, Widget>(
                            (key, value) => MapEntry(
                              key,
                              Text(key),
                            ),
                          )
                          .values
                          .toList(),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select a valid option';
                        }
                        _dropdown = value;
                        return null;
                      },
                      items: arxivCategories
                          .map<String, DropdownMenuItem<String>>(
                            (key, value) => MapEntry(
                              key,
                              DropdownMenuItem<String>(
                                child: Text(
                                  value,
                                ),
                                value: key,
                              ),
                            ),
                          )
                          .values
                          .toList(),
                    ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    queryState.newQuery = _value;
                    sidebarState.slideIn();
                  }
                },
                child: const Text("submit"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
