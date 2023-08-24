import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/models/buildsmodels.dart';
import 'package:gestaodomiciliar/widgets/Texts.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';
import 'package:gestaodomiciliar/widgets/drawer.dart';

class BuildDetails extends StatelessWidget
{
  BuildDetails();

  @override
  Widget build(BuildContext context)
  {
    final object_  = ModalRoute.of(context)!.settings.arguments as dynamic;
    Building building = object_;

    return Scaffold(
      appBar: AppBarCustom(title: building.name.toString(),color: gdBlack, ),
      drawer: CustomDrawer(),
      body: Container(
              child:
        ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget> [
            Card(
              // margin: EdgeInsets.all(),
              color: Color.fromARGB(255, 255, 255, 255),
              child: Image(
                image: AssetImage('assets/house.jpg'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: gdRed
                ),
                // borderRadius: BorderRadius.circular(10)
              ),
              elevation: 3,
              shadowColor: gdGray,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: building.name.toString(), fSize: 16, color: gdBlack,fontWeight: FontWeight.w600,lSpacing: 1,),
                    SizedBox(height: 10,),
                    CustomText(text: "Numero              ${building.number.toString()}", fSize: 14, color: gdGray,lSpacing: 1,),
                    SizedBox(height: 10,),
                    CustomText(text: "Apartamentos   ${building.apartments.toString()}", fSize: 14, color: gdGray,lSpacing: 1,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: gdRed
                ),
                // borderRadius: BorderRadius.circular(10)
              ),
              elevation: 3,
              shadowColor: gdGray,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Cidade               ${building.city.toString()}", fSize: 14, color: gdGray,fontWeight: FontWeight.w500,lSpacing: 1,),
                    SizedBox(height: 10,),
                    CustomText(text: "Bairro                 ${building.zone.toString()}", fSize: 14, color: gdGray,lSpacing: 1,fontWeight: FontWeight.w500,),
                    SizedBox(height: 10,),
                    CustomText(text: "Rua                     ${building.street.toString()}", fSize: 14, color: gdGray,lSpacing: 1,fontWeight: FontWeight.w500,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 60,
                  child:ElevatedButton(

                    onPressed: (){
                      // Navigator.pushNamed(context, Routers)
                      print("Editar");
                    },
                    child: Icon(Icons.edit),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: gdInfo
                    ),
                    // child: CustomElevatedButtom(),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 60,
                  child:ElevatedButton(

                    onPressed: (){
                      print("Eliminar");
                      // Navigator.pushNamed(context, Routers)
                    },
                    child: Icon(Icons.delete_forever),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: gdDanger
                    ),
                    // child: CustomElevatedButtom(),
                  ),
                )
              ],
            ),
            // Card(
            //   shape: RoundedRectangleBorder(
            //       side: BorderSide(
            //           color: gdRed
            //       ),
            //       borderRadius: BorderRadius.circular(10)
            //   ),
            //   shadowColor: gdRed,
            //   child: Padding(
            //     padding: EdgeInsets.all(10.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         textFormField(building.name, true, "Nome edificio", Icon(Icons.house)),
            //         SizedBox(height: 10,),
            //         textFormField(building.number.toString(), true, "N edificio", Icon(Icons.numbers_outlined)),
            //         SizedBox(height: 10,),
            //         textFormField(building.apartments.toString(), true, "N apartamentos", Icon(Icons.numbers_outlined)),
            //         SizedBox(height: 10,),
            //         customCard(),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}


TextFormField textFormField(String? initValue, bool? readOnly, String? labelText, Icon? prefixIcon)
{
  return TextFormField(

    readOnly: readOnly!,
    decoration: InputDecoration(
      labelText: labelText,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder()
    ),
    initialValue: initValue!,
  );
}

Card customCard()
{
  return Card(

    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: gdRed, width: 5),
          ),
        ),
        child: Text(
          'Product Name',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
      clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3))),
    ),
  );
}
// Container(
// color: Colors.black38,
// child: ListView(
// padding: EdgeInsets.all(20.0),
// children: <Widget>[
// SizedBox(
// width: 200,
// height: 170,
// child: Image.asset(building.avatarUrl),
// ),
// const SizedBox(height: 10),
// createButton(
// 'Editar',
// Icons.edit,
// Colors.orange,
// double.infinity,
// 40,
// () {
// //EXISTE UM PROBLEMA AQUI
// Navigator.of(context)
//     .pushNamed(AppRoutes.BUILDING_EDIT, arguments: building);
// },
// ),
// const SizedBox(height: 10),
// createButton('Deletar', Icons.edit, Colors.red, double.infinity, 40,
// () {
// Navigator.of(context)
//     .pushNamed(AppRoutes.BUILDING_DELETE, arguments: building);
// }),
// Card(
// child: Padding(
// padding: EdgeInsets.all(15.0),
// child: Column(
// children: [
// const Text(
// 'Detais',
// style:
// TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// ),
// textField(
// building.name, true, 'Nome', const Icon(Icons.home)),
// textField(building.buildingNumber.toString(), true,
// 'Nr. do Edificio', const Icon(Icons.numbers)),
// textField(building.apartamentNumbers.toString(), true,
// 'Nr. de apartamentos', const Icon(Icons.home)),
// textField(
// building.street, true, 'Rua', const Icon(Icons.home)),
// textField(
// building.city, true, 'Cidade', const Icon(Icons.home)),
// textField(building.country.toString(), true, 'Pais',
// const Icon(Icons.home)),
// ],
// ),
// ),
// )
// ],
// ),
// ),