
//
//  usuario.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 23/03/26.
//

struct Usuario: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
    let email: String

    let phone: String
    let website: String
    
    let company: Compañia
}

