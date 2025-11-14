// The Swift Programming Language
// https://docs.swift.org/swift-book
//public class IoTSDK {
//    @MainActor public static let shared = IoTSDK()
//    public func loginUser() -> String {
//        return "Hello, World! Login User"
//    }
//    
//    @MainActor public func showAlert(title: String, message: String)
//    {
//        AlertHelper.showAlert(title: title, message: message)
//    }
//}

//
//@MainActor public class IoTSDK {
//    @MainActor public static let shared = IoTSDK() // just the type itself
//    private init() {} // enforce singleton
//
//    public func loginUser() -> String {
//        return "Logged In"
//    }
//
//    @MainActor public func showAlert(title: String, message: String) {
//        AlertHelper.showAlert(title: title, message: message)
//    }
//}


import UIKit

@MainActor
public class IoTSDKManager {
    // ✅ Use the class type itself, not IoTSDK.IoTSDK
    public static let shared = IoTSDKManager()
    
    // Private initializer for singleton
    private init() {}

    public func loginUser() -> String {
        return "Logged in"
    }

    @MainActor
    public func showAlert(title: String, message: String) {
        AlertHelper.showAlert(title: title, message: message)
    }
}
