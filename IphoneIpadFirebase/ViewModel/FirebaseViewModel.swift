//
//  FirebaseViewModel.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 11/10/22.
//

import Foundation
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class FirebaseViewModel: ObservableObject {
    @Published var show = false
    
    func login(email: String, pass: String, completion: @escaping (_ done: Bool) -> Void){
        Auth.auth().signIn(withEmail: email, password: pass) {
            (user, error) in
            
            if user != nil {
                print("Entro")
                completion(true)
            } else {
                if let error = error?.localizedDescription {
                    print("Error en firebase", error)
                } else {
                    print("Error en la app")
                }
            }
        }
    }
    
    func createUser(email: String, pass: String, completion: @escaping (_ done: Bool) -> Void){
        Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
            if user != nil {
                print("Se registro y Entro")
                completion(true)
            } else {
                if let error = error?.localizedDescription {
                    print("Error en firebase de registro", error)
                } else {
                    print("Error en la app")
                }
            }
        }
    }
    
    /// BASE DE DATOS
    
    // GUARDAR
    func save(titulo: String, desc: String, plataforma: String, portada: String, completion: @escaping (_ done: Bool) -> Void) {
        let db = Firestore.firestore()
        let id = UUID().uuidString
        guard let idUser = Auth.auth().currentUser?.uid else { return  }
        guard let email = Auth.auth().currentUser?.email else { return  }
        let campos : [String: Any] = ["titulo": titulo, "desc": desc, "portada": portada, "idUser": idUser, "email": email]
        db.collection(plataforma).document(id).setData(campos){error in
            if let error = error?.localizedDescription {
                print("Error al guardar en firestore", error)
            } else {
                print("guardo todo")
                completion(true)
            }
        }
        
    }
    
}

