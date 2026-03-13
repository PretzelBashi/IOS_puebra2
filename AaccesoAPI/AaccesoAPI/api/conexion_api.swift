//
//  conexion_api.swift
//  AaccesoAPI
//
//  Created by alumno on 3/13/26.
//

import Foundation

//fuard significa que si al crear el tipo URL obtenemos un error lo resuelve como un nulo

class ServicioAPI{
    static func descargar_informacion<Tipo: Codable>(desde: String) async -> Tipo? {
        do{
            guard let url = URL(string: desde) else {throw ErroresAPI.url_mal_escrota}
            
            let (datos, respuesta) = try await URLSession.shared.data(from: url)
            
            guard let respuesta = respuesta as? HTTPURLResponse else {throw ErroresAPI.respuesta_erronea} //Se intenta convertir la respuesta a respuesta HTTP
            guard respuesta.statusCode >= 200 && respuesta.statusCode < 300 else {throw ErroresAPI.codigo_respuesta_erronea}
            
            guard let datos_descodificados = try? JSONDecoder().decode(Tipo.self, from: datos) else {throw ErroresAPI.falla_en_la_codificacion}
            
            return datos_descodificados
        }
        catch ErroresAPI.url_mal_escrota{
            print("\(#function) Error: URL mal escrita. Hola, escribiste eso mal w")
        }
        catch ErroresAPI.respuesta_erronea{
            print("\(#function) Error: Respuesta erronea")
        }
        catch ErroresAPI.peticion_invalida{
            print("\(#function) Error: Peticion invalida")
        }
        catch ErroresAPI.falla_en_la_codificacion{
            print("\(#function) Error: El tipo de dato \(Tipo.self) tiene campos erroneos nigga")
        }
        catch ErroresAPI.codigo_respuesta_erronea{
            print("\(#function) Error: Codigo de estado erroneo")
        }
        catch{
            print("\(#function) ERROR: No se w")
        }
        
        return nil
    }
}
