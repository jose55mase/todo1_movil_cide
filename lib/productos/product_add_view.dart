import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductAddView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<ProductAddView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController descriptionCtrl = new TextEditingController();
  TextEditingController priceCtrl = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: formUI()
      )
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUI() {

    return  Card(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            formItemsDesign(Icons.person,
                TextFormField(
                    onChanged: (text){
                      print("La el uso de field: $text");
                    },
                    controller: nameCtrl,
                    decoration: new InputDecoration(
                      labelText: 'Nombre',
                    ),
                    validator: validateText
                )
            ),
            formItemsDesign(Icons.assignment_rounded,
                TextFormField(
                    onChanged: (text){
                      print("La el uso de iNput Descripcion: $text");
                    },
                    controller: descriptionCtrl,
                    decoration: new InputDecoration(
                      labelText: 'Descripcion',
                    ),
                    validator: validateText
                )
            ),
            formItemsDesign(Icons.monetization_on,
                TextFormField(
                    onChanged: (text){
                      print("La el uso de iNput Descripcion: $text");
                    },
                    controller: priceCtrl,
                    decoration: new InputDecoration(
                      labelText: 'Descripcion',
                    ),
                    validator: validateText
                )
            ),
            GestureDetector(
              onTap: (){
                save();
              },
              child: Container(
                margin: EdgeInsets.all(30.0),
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF0EDED2),
                    Color(0xFF03A0FE),
                  ],
                      begin: Alignment.topLeft, end: Alignment.bottomRight), /* Especificamos en qué parte queremos que se muestre los colores */
                ),
                child: Text("Guardar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                padding: EdgeInsets.only(top: 16, bottom: 16),

              ),
            )
          ],


        ),
      )
    );
  }

  // Validaciones para los inputs
  // Nombre producto
  String validateText(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }

  save() {
    if(_formKey.currentState.validate()){

      return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
              content: Text(nameCtrl.text)
          );
        }
      );
    }
  }



}
