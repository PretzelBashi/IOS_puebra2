//
//  usuario.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import Foundation

struct Usuario: Identifiable{
    let id = UUID()
    
    let nombre: String
    let edad: String
    
    let apodo: String
    let instagram: String
    
    let activo: Bool
}
