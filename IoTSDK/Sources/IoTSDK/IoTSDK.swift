// The Swift Programming Language
// https://docs.swift.org/swift-book
public class IoTSDK {
    @MainActor public static let shared = IoTSDK()
    public func loginUser() -> String {
        return "Hello, World! Login User"
    }
    
    @MainActor public func showAlert(title: String, message: String)
    {
        AlertHelper.showAlert(title: title, message: message)
    }
}
