import 'dart:io';

import 'package:drukspil/Database/DatabaseService.dart';
import 'package:drukspil/Pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDialog extends StatefulWidget {
  final String title, buttonText, header1, header2;
  final IconData icon1, icon2;

  CustomDialog({
    @required this.title,
    @required this.buttonText,
    @required this.icon1,
    @required this.icon2,
    @required this.header1,
    @required this.header2,
  });

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {

  String textFormField1;
  String textFormField2;
  //Used to make sure it is not possible to press button multiple times
  bool isPressed = false;
  bool doneUploading = false;
  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController2.dispose();
    myController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: Consts.padding,
            bottom: Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
          ),
          //margin: EdgeInsets.only(top: Consts.avatarRadius),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2.0),
              //Text field for group name
              TextFormField(
                decoration: InputDecoration(
                  labelText: widget.header1,
                  icon: Icon(widget.icon1),
                ),
                onChanged: (text) {
                  textFormField1 = text;
                },
                controller: myController1,
                keyboardType: TextInputType.text,
                validator: validate,
                autovalidate: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: widget.header2,
                  icon: Icon(widget.icon2),
                ),
                onChanged: (text) {
                  textFormField2 = text;
                },
                controller: myController2,
                keyboardType: TextInputType.text,
                validator: validate,
                autovalidate: true,
              ),
              SizedBox(height: 2.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () async {
                    if (!isPressed) {
                      isPressed = true;
                      if (textFormField1.length <= 3 || textFormField2.isEmpty) {
                        isPressed = false;
                      } else{
                        setState(() {

                        });
                        //Removes keyboard
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        if (widget.title == 'Feedback'){
                          await DatabaseService().sendFeedback(textFormField1, textFormField2).whenComplete(() => uploadData());
                        } else {
                          await DatabaseService().sendSuggest(textFormField1, textFormField2).whenComplete(() => uploadData());
                        }
                      }
                    }
                  },
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                  child: isPressed
                      ? FittedBox(
                    child: SizedBox(
                      height: 28,
                      width: 28,
                      child: new CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                          backgroundColor: Colors.orange
                      ),
                    ),
                    fit: BoxFit.scaleDown
                    ,)
                      : Text(widget.buttonText,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String validate(String value) {
    if (value.length < 3){
      isPressed = true;
      return 'must be more than 2 characters';
    } else {
      isPressed = false;
      return null;
    }
  }

  uploadData(){
    sleep(const Duration(seconds: 1));
    Navigator.of(context, rootNavigator: true).pop(MainPage());
  }


}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}

