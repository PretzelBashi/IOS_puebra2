//
//  servicio_agente.swift
//  Shimeji
//
//  Created by alumno on 5/6/26.
//

import FirebaseFirestore
import Combine



@Observable
class ServicioAgente{
    var peticion: [Peticion] = []
    
    private var base_de_datos = Firestore.firestore()
    
    func obtener_actualizaciones_de_la_peticion(){
        base_de_datos.collection("peticiones").order(by: "timestamp").addSnapshotListener { snapshot, error in //La coleccion es el contenedor en la base de datos
            guard let documento = snapshot?.documents else { return }
            self.peticion = documento.compactMap {elemento in try? elemento.data(as: Peticion.self)} //convierte de JSON a mensaje
        }
    }
    
    func crear_peticion(){
        let contexto = Contexto(
            historia: "Hola",
            personalidad: "Humilde",
            acciones_disponibles: [],
            estados_disponibles: [],
            estado_emocional: "Feliz"
        )
        let peticion = Peticion(
            id: UUID().uuidString,
            estado: .creacion,
            contexto: contexto,
            mensaje: "Holi",
            animacion: nil,
            comando_a_ejecutar: nil,
            respuesta_del_agente: nil
        )
        
        do{
            var resultado_enviar_peticion = try
            _ = try base_de_datos.collection("peticiones").addDocument(from:peticion)
            print("El resultado de envial la peticion es: \(resultado_enviar_peticion)")
        }
        catch{
            print("Teiens un error \(error)")
        }
    }
}
