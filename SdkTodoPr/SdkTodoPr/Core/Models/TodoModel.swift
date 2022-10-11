//
//  TodoModel.swift
//  SdkTodoPr
//
//  Created by ap on 11/10/2565 BE.
//

import RealmSwift

class TodoRealm: Object {
   @Persisted(primaryKey: true) var _id: ObjectId
   @Persisted public var name: String = ""
   @Persisted public var status: Bool = false
   @Persisted public var ownerId: String
   public convenience init(name: String, ownerId: String) {
       self.init()
       self.name = name
       self.ownerId = ownerId
   }
}

public struct Todo{
    public var _id: String
    public var name: String
    public var status: Bool
    public var ownerId: String
    
    public init(_id:String, name:String, status:Bool, ownerId: String){
        self._id = _id
        self.name = name
        self.status = status
        self.ownerId = ownerId
    }
    
    public init(name:String, status:Bool, ownerId: String){
        self._id = ""
        self.name = name
        self.status = status
        self.ownerId = ownerId
    }
    
    public init(name:String, ownerId: String){
        self._id = ""
        self.name = name
        self.status = false
        self.ownerId = ownerId
    }
}


