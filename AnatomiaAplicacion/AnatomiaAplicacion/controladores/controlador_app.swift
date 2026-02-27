//
//  controlador_app.swift
//  AnatomiaAplicacion
//
//  Created by alumno on 2/27/26.
//

import SwiftUI

@Observable //Hereda de NS Observable object
class ControladorDeAplicacion{
    private var _clicks_dados: Int = 0
    
    var cantidad_clicks: Int = 0
    var cantidad_total_de_clicks: Int = 0
    
    func aumentar_clicks(cantidad: Int = 1){
        cantidad_clicks += cantidad
        cantidad_total_de_clicks += cantidad
    }
    
    func decrementar_clicks(cantidad: Int = 1){
        cantidad_clicks -= cantidad
    }
}

private func _decrementar_clicks(){
    
}
