//
//  MockDataLoader.swift
//  Example
//
//  Created by Alexander Schuch on 03/04/15.
//  Copyright (c) 2015 Alexander Schuch. All rights reserved.
//

import Foundation
import Argonaut

class MockDataLoader {

    lazy var userJSONData: NSData  = {
        let path = NSBundle(forClass: self.dynamicType).pathForResource("user", ofType: "json")!
        return NSData(contentsOfFile: path)!
        }()
    
    lazy var tasksJSONData: NSData  = {
        let path = NSBundle(forClass: self.dynamicType).pathForResource("tasks", ofType: "json")!
        return NSData(contentsOfFile: path)!
        }()
    
    lazy var userJSON: JSONObject  = {
        return NSJSONSerialization.JSONObjectWithData(self.userJSONData, options: NSJSONReadingOptions(), error: nil) as! JSONObject
        }()
    
    lazy var tasksJSON: JSONArray  = {
        return NSJSONSerialization.JSONObjectWithData(self.tasksJSONData, options: NSJSONReadingOptions(), error: nil) as! JSONArray
        }()
    
    lazy var invalidUserJSONData: NSData  = {
        let path = NSBundle(forClass: self.dynamicType).pathForResource("user_invalid", ofType: "json")!
        return NSData(contentsOfFile: path)!
        }()
    
    lazy var invalidTasksJSONData: NSData  = {
        let path = NSBundle(forClass: self.dynamicType).pathForResource("tasks_invalid", ofType: "json")!
        return NSData(contentsOfFile: path)!
        }()
    
    lazy var invalidUserJSON: JSONObject  = {
        return NSJSONSerialization.JSONObjectWithData(self.invalidUserJSONData, options: NSJSONReadingOptions(), error: nil) as! JSONObject
        }()
    
    lazy var invalidTasksJSON: JSONArray  = {
        return NSJSONSerialization.JSONObjectWithData(self.invalidTasksJSONData, options: NSJSONReadingOptions(), error: nil) as! JSONArray
    }()

}
