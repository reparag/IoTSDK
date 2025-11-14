//
//  AlertHepler.swift
//  IoTLibrary
//
//  Created by Parag Patil on 14/11/25.
//
import UIKit

@MainActor
public class AlertHelper {

    private static func topViewController(_ controller: UIViewController? = nil) -> UIViewController? {
        let rootVC: UIViewController?
        if let controller = controller {
            rootVC = controller
        } else {
            rootVC = UIApplication.shared.connectedScenes
                .compactMap { ($0 as? UIWindowScene)?.keyWindow }
                .first?.rootViewController
        }

        if let nav = rootVC as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = rootVC as? UITabBarController {
            return topViewController(tab.selectedViewController)
        }
        if let presented = rootVC?.presentedViewController {
            return topViewController(presented)
        }
        return rootVC
    }

    public static func showAlert(title: String, message: String) {
        guard let topVC = topViewController() else {
            print("⚠️ AlertHelper: No top view controller found.")
            return
        }

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        topVC.present(alert, animated: true)
    }
}
