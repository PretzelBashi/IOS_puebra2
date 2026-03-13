//
//  publicacion.swift
//  AaccesoAPI
//
//  Created by alumno on 3/13/26.
//
/// Decodable: Transofrmar de JSON a Swift
/// Encodable: Transformar de Swift a JSON
/// Codable: Todas las anteriores
/// Cuidado con los nombres
///
struct Publicacion: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
