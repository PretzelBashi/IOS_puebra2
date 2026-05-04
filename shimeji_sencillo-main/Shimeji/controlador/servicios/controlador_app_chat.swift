//
//  controlador_app.swift
//  Shimeji
//
//  Created by alumno on 5/4/26.
//

import FirebaseFirestore
import Combine



@Observable
class ServicioChat{
    var mensajes: [Mensaje] = []
    
    private var base_de_datos = Firestore.firestore()
    
    func obtener_mensajes(){
        base_de_datos.collection("mensajes").order(by: "timestamp").addSnapshotListener { snapshot, error in //La coleccion es el contenedor en la base de datos
            guard let documento = snapshot?.documents else { return }
            self.mensajes = documento.compactMap {elemento in try? elemento.data(as: Mensaje.self)} //convierte de JSON a mensaje
        }
    }
    
    func enviar_mensaje(texto: String){
        let mensaje = Mensaje(id: UUID().uuidString, texto: texto, quien_lo_envia: "yo", timestamp: Date())
        do{
            _ = try base_de_datos.collection("mensajes").addDocument(from:mensaje)
        }
        catch{
            print("Teiens un error \(error)")
        }
    }
}
