// To parse this JSON data, do
//
//     final locales = localesFromJson(jsonString);

import 'dart:convert';

Locales localesFromJson(String str) => Locales.fromJson(json.decode(str));

String localesToJson(Locales data) => json.encode(data.toJson());

class Locales {
    Locales({
        this.nombre,
        this.descripcion,
        this.sector,
        this.recomendaciones,
    });

    String? nombre;
    String? descripcion;
    String? sector;
    String? recomendaciones;

    factory Locales.fromJson(Map<String, dynamic> json) => Locales(
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        sector: json["sector"],
        recomendaciones: json["recomendaciones"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "descripcion": descripcion,
        "sector": sector,
        "recomendaciones": recomendaciones,
    };
}
