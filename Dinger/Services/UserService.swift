//
//  UserService.swift
//  Dinger
//
//  Created by Rodrigo Conte on 24/07/20.
//  Copyright © 2020 Rodrigo Conte. All rights reserved.
//

import Foundation

class UserService {
    
    static let shared = UserService()
    
    let users: Array<User> = [
        User(id: 101, name: "Ana Catharina", age: 2, match: true, phrase: "Gosto de bolinha e biscoito", photo: "Doguinho1"),
        User(id: 102, name: "Bolinho", age: 4, match: false, phrase: "Sou do mundo", photo: "Doguinho2"),
        User(id: 103, name: "Skol", age: 3, match: true, phrase: "Quero alguem pra brincar", photo: "Doguinho3"),
        User(id: 104, name: "Amora", age: 6, match: true, phrase: "Tenho historias para contar", photo: "Doguinho4"),
        User(id: 105, name: "Billy", age: 3, match: false, phrase: "Somente olhe", photo: "Doguinho5"),
        User(id: 106, name: "Noemio", age: 9, match: true, phrase: "Velho mas vivo", photo: "Doguinho6"),
        User(id: 107, name: "Bolota", age: 1, match: true, phrase: "Quero novos amigos", photo: "Doguinho7"),
        User(id: 108, name: "Bartolomeu", age: 2, match: false, phrase: "Sou um cão livre", photo: "Doguinho8"),
        User(id: 109, name: "Beringela", age: 3, match: true, phrase: "Amo passaros", photo: "Doguinho9"),
        User(id: 110, name: "Princesa", age: 1, match: false, phrase: "Você disse... pega a bolinha?", photo: "Doguinho10")

    ]
    
    func getUsers () -> Array<User> {
        return self.users
    }

}
