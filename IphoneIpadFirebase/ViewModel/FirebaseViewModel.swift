//
//  FirebaseViewModel.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 11/10/22.
//

import Foundation
import FirebaseCore
import FirebaseAuth

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
}

