import 'package:catalog_app/pages/home/HomePage.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class PhoneAuth extends StatefulWidget {
  PhoneAuth({Key? key}) : super(key: key);

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('91');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF010a2b),
          ),
          child: GlassmorphicContainer(
            width: double.infinity,
            height: double.infinity,
            blur: 10,
            border: 0,
            borderRadius: 0,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(0, 1, 10, 43),
                  Color.fromARGB(0, 1, 10, 43),
                ],
                stops: [
                  0.3,
                  1,
                ]),
            borderGradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  const Color(0xFF4579C5).withAlpha(100),
                  const Color(0xFFFFFFF).withAlpha(55),
                  const Color(0xFFF75035).withAlpha(10),
                ],
                stops: [
                  0.06,
                  0.95,
                  1
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                    child: Text(
                      "Enter your phone",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                    child: Text(
                      "You will receive 4 digit code to verify your phone",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          onTap: _openCountryPickerDialog,
                          title: _buildDialogItem(_selectedDialogCountry),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                          ),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 20),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(width: 8.0),
          Text(
            "+${country.phoneCode}",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 8.0),
          Flexible(
              child: Text(
            country.name,
            style: TextStyle(color: Colors.black),
          ))
        ],
      );
  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(
              primaryColor: Colors.deepOrange,
              dialogBackgroundColor: Colors.white),
          child: CountryPickerDialog(
            titlePadding: EdgeInsets.all(8.0),
            searchCursorColor: Colors.deepOrange,
            searchInputDecoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.grey,
                filled: true),
            isSearchable: true,
            title: Text(
              'Select your phone code',
              style: TextStyle(color: Colors.black),
            ),
            onValuePicked: (Country country) =>
                setState(() => _selectedDialogCountry = country),
            itemBuilder: _buildDialogItem,
            priorityList: [
              CountryPickerUtils.getCountryByIsoCode('TR'),
              CountryPickerUtils.getCountryByIsoCode('US'),
            ],
          ),
        ),
      );
}
