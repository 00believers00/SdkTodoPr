//
//  DBService.swift
//  SdkTodoPr
//
//  Created by ap on 11/10/2565 BE.
//

import RealmSwift

protocol DBServiceDelegate{
    var realm:Realm { get }
    
    func add(todo: TodoRealm)->Bool
    
    func delete(todo: TodoRealm)->Bool
    
    func findById(id: String)->TodoRealm?
    
    func read() -> [TodoRealm]
    
    func readTodo() -> [TodoRealm]
}

struct DBService: DBServiceDelegate {
   
    var realm: Realm
    var todoRealm:Results<TodoRealm>
    
    
    init(){
        var config = Realm.Configuration.defaultConfiguration
        config.objectTypes = [TodoRealm.self]
        realm = try! Realm(configuration: config)
        todoRealm = realm.objects(TodoRealm.self)
    }
    
    func add(todo: TodoRealm) -> Bool {
        do{
            try realm.write {
                realm.add(todo)
            }
            return true
        }catch{
            print("Error Database write data")
        }
        return false
    }
    
    func read() -> [TodoRealm]{
        var data:[TodoRealm] = []
        let result = realm.objects(TodoRealm.self)
        result.forEach(){
            data.append($0)
        }
        return data
    }
    
    func readTodo() -> [TodoRealm] {
        var data:[TodoRealm] = []
        todoRealm.forEach(){
            data.append($0)
        }
        return data
    }
    
    func findById(id: String) -> TodoRealm? {
        do{
            let objectId = try ObjectId(string: id)
            
            let result = todoRealm.where {
                $0._id == objectId
            }
            if result.count > 0 {
                return result.first
            }
        }catch{
            print("ERROR::Convert Object ID")
        }
        
        return nil
    }
    
    func delete(todo: TodoRealm) -> Bool{
        do{
            try realm.write {
                realm.delete(todo)
            }
            return true
        }catch{
            print("Error Database write data")
        }
        return false
    }
    
}
