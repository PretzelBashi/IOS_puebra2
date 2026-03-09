//
//  registrar_usuario_pantalla.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

enum CamposRegistrarUsuario: String{
    case nombre = "nombre"
    case apodo = "apodo"
    case edad = "edad"
    case instagram = "instagram"
}

struct RegistrarUsuario: View {
    @Environment(ControladorGeneral.self) var controlador
    @Environment(\.dismiss) var salir
    
    @State var nombre: String = ""
    @State var instagram: String = ""
    
    @State var edad: String = ""
    @State var apodo: String = ""
    
    @State var error: ErrorUI? = nil
    var body: some View {
        if(error != nil){
            Text("Hay un problema, porfavor resuelve")
        }
        VStack{
            //TextField("Nombre: " , text: $nombre)
            Text("Crea una cuenta")
            CampoTexto(
                entrada: $nombre,
                placeholder: "Nombre",
                error: error,
                id: CamposRegistrarUsuario.nombre.rawValue
            )
            
            CampoTexto(
                entrada: $apodo,
                placeholder: "Apodo",
                error: error,
                id: CamposRegistrarUsuario.apodo.rawValue
            )
            
            CampoTexto(
                entrada: $edad,
                placeholder: "Edad",
                error: error,
                id: CamposRegistrarUsuario.edad.rawValue
            )
            
            CampoTexto(
                entrada: $instagram,
                placeholder: "Instagram",
                error: error,
                id: CamposRegistrarUsuario.instagram.rawValue
            )
            
            Button(action: {
                validar_entradas()
            }){
                Image(systemName: "person.fill.badge.plus")
                Text("Agregar usuario")
            }.padding(20)
        }.padding(20)
    }
    func validar_entradas(){
        if(nombre.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.nombre.rawValue,
                error: "No tienes nombre",
                nivel_de_error: .grave)
            return
        }
        if(apodo.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.apodo.rawValue,
                error: "No tienes apodo",
                nivel_de_error: .grave)
            return
        }
        if(edad.isEmpty || Int(edad) == nil){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.edad.rawValue,
                error: "No tienes edad o no introduciste un número válido",
                nivel_de_error: .grave)
            return
        }
        if(instagram.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.instagram.rawValue,
                error: "No tienes instagram",
                nivel_de_error: .grave)
            return
        }
        controlador.agregar_usuarios(crear_usuario())
        salir()
        apodo = ""
        nombre = ""
        edad = ""
        instagram = ""
    }
    
    
    func crear_usuario() -> Usuario{
        return Usuario(
            nombre: nombre,
            edad: instagram,
            apodo: edad,
            instagram: apodo,
            activo: true
        )
    }
}

#Preview {
    RegistrarUsuario()
        .environment(ControladorGeneral())
}
