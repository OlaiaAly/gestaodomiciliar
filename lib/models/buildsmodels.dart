import 'package:http/http.dart' as http;
import 'package:gestaodomiciliar/config/constants.dart';
import 'dart:convert';
class Building
{
   final int? id;
   final int? number, apartments;
   final String?  name, city, street, image, zone;
   Building({this.id, this.number, this.apartments, this.zone, this.city, this.name, this.image, this.street});
}