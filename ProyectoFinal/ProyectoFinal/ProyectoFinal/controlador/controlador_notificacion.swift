//
//  controlador_notificacion.swift
//  ProyectoFinal
//
//  Created by alumno on 4/17/26.
//

import SwiftUI
import RealityKit

extension ControladorAplicacion{
    func activar_comportamiento(_ nombre: String){
        guard let escenario: RealityKit.Scene = raiz_escena.scene else {fatalError("No cargo la escena raiz")}
        
        let nombre_notificacion = Notification.Name("RealityKit.NotificationTrigger")
        let informacion_general: [String: Any] = [
            "RealityKit.NotificationTrigger.Scene": escenario,
            "RealityKit.NotificationTrigger.Identifier": nombre
        ]
        
        NotificationCenter.default.post(name: nombre_notificacion, object: nil, userInfo: informacion_general)
    }
    
    func escuchar_comportamiento(_ nombre: String){
        print("Nombre de finalizacion comportamiento: \(nombre)")
    }
}

