//
//  Main.swift
//  SdkTodoPr
//
//  Created by ap on 11/10/2565 BE.
//

import Foundation

public protocol TodoDelegate{
    func add(todo: Todo)->Bool
    
    func delete(id:String)->Bool
    
    func read() -> [Todo]
}

public struct TodoDatabase:TodoDelegate{
    private var database = DBService()
    public init() {
        
    }
    public func add(todo: Todo) -> Bool {
        database.add(todo: TodoRealm(name: todo.name, ownerId: todo.ownerId))
    }
    
    public func delete(id: String) -> Bool {
        let result:TodoRealm? = database.findById(id: id)
        guard let data = result else {
            return false
        }
        let status = database.delete(todo: data)
        return status
    }
    
    public func read() -> [Todo] {
        let result = database.read()
        var todos:[Todo] = []
        result.forEach(){
            todos.append(Todo(_id: $0._id.stringValue, name: $0.name, status: $0.status, ownerId: $0.ownerId))
        }
        
        return todos
    }
    
}
