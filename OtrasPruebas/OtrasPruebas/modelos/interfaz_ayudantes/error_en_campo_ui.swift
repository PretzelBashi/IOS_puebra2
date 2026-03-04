//
//  error_en_campo_ui.swift
//  OtrasPruebas
//
//  Created by alumno on 3/4/26.
//

enum NivelesDeError{
    case grave
    case advertencia
    case ninguno
}

struct ErrorUI{
    let campo: String
    let error: String
    let nivel_de_error: NivelesDeError
}
