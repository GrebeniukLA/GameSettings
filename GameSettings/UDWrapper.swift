//
//  UDWrapper.swift
//  DMS
//
//  Created by Freddy on 12/18/14.
//  Copyright (c) 2014 DMSCompany. All rights reserved.
//

import Foundation

class UDWrapper{
    class func getObject(_ key: String) -> AnyObject? {
        return UserDefaults.standard.object(forKey: key) as AnyObject?
    }
    
    class func getInt(_ key: String) -> Int {
        return UserDefaults.standard.integer(forKey: key)
    }
    
    class func getBool(_ key: String) -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }
    
    class func getFloat(_ key: String) -> Float {
        return UserDefaults.standard.float(forKey: key)
    }
    
    class func getString(_ key: String) -> String? {
        return UserDefaults.standard.string(forKey: key)
    }
    
    class func getData(_ key: String) -> Data? {
        return UserDefaults.standard.data(forKey: key)
    }
    
    class func getArray(_ key: String) -> NSArray? {
        return UserDefaults.standard.array(forKey: key) as NSArray?
    }
    
    class func getDictionary(_ key: String) -> NSDictionary? {
        return UserDefaults.standard.dictionary(forKey: key) as NSDictionary?
    }
    
    
    //-------------------------------------------------------------------------------------------
    // MARK: - Get value with default value
    //-------------------------------------------------------------------------------------------
    
    class func getObject(_ key: String, defaultValue: AnyObject) -> AnyObject? {
        if getObject(key) == nil {
            return defaultValue
        }
        return getObject(key)
    }
    
    class func getInt(_ key: String, defaultValue: Int) -> Int {
        if getObject(key) == nil {
            return defaultValue
        }
        return getInt(key)
    }
    
    class func getBool(_ key: String, defaultValue: Bool) -> Bool {
        if getObject(key) == nil {
            return defaultValue
        }
        return getBool(key)
    }
    
    class func getFloat(_ key: String, defaultValue: Float) -> Float {
        if getObject(key) == nil {
            return defaultValue
        }
        return getFloat(key)
    }
    
    class func getString(_ key: String, defaultValue: String) -> String? {
        if getObject(key) == nil {
            return defaultValue
        }
        return getString(key)
    }
    
    class func getData(_ key: String, defaultValue: Data) -> Data? {
        if getObject(key) == nil {
            return defaultValue
        }
        return getData(key)
    }
    
    class func getArray(_ key: String, defaultValue: NSArray) -> NSArray? {
        if getObject(key) == nil {
            return defaultValue
        }
        return getArray(key)
    }
    
    class func getDictionary(_ key: String, defaultValue: NSDictionary) -> NSDictionary? {
        if getObject(key) == nil {
            return defaultValue
        }
        return getDictionary(key)
    }
    
    
    //-------------------------------------------------------------------------------------------
    // MARK: - Set value
    //-------------------------------------------------------------------------------------------
    
    class func setObject(_ key: String, value: AnyObject?) {
        if value == nil {
            UserDefaults.standard.removeObject(forKey: key)
        } else {
            UserDefaults.standard.set(value, forKey: key)
        }
        UserDefaults.standard.synchronize()
    }
    
    class func setInt(_ key: String, value: Int) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func setBool(_ key: String, value: Bool) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func setFloat(_ key: String, value: Float) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func setString(_ key: String, value: NSString?) {
        if (value == nil) {
            UserDefaults.standard.removeObject(forKey: key)
        } else {
            UserDefaults.standard.set(value, forKey: key)
        }
        UserDefaults.standard.synchronize()
    }
    
    class func setData(_ key: String, value: Data) {
        setObject(key, value: value as AnyObject?)
    }
    
    class func setArray(_ key: String, value: NSArray) {
        setObject(key, value: value)
    }
    
    
    class func setDictionary(_ key: String, value: NSDictionary) {
        setObject(key, value: value)
    }
    
    
    //-------------------------------------------------------------------------------------------
    // MARK: - Synchronize
    //-------------------------------------------------------------------------------------------
    
    class func Sync() {
        UserDefaults.standard.synchronize()
    }
}
