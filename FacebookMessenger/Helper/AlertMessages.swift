//
//  AlertMessages.swift
//  MSAPP
//
//  Created by Yassmin Abdallah on 5/3/17.
//  Copyright © 2017 Yassmin Abdallah. All rights reserved.
//

import Foundation
import UIKit
import Localize_Swift


class ShowAlert {

    static func showAlert(alertMessage:String){
        let alertController = UIAlertController(title: nil, message: alertMessage , preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK".localized(), style: UIAlertAction.Style.default)
        alertController.addAction(okAction)
        alertController.show()
    }
    
    static func showAlertWithHandler(message:String,ok: @escaping (_ result: String) -> Void){
        let alertController = UIAlertController(title: nil, message: message , preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK".localized(), style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            ok("test")
        }
        alertController.addAction(okAction)
        alertController.show()
    }
    
    
    static func showAlertInView(alertMessage:String , parent: UIViewController){
        let alertController = UIAlertController(title: nil, message: alertMessage , preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK".localized(), style: UIAlertAction.Style.default)
        alertController.addAction(okAction)
        parent.present(alertController, animated: true, completion: nil)
    }
    
    static func showAlertWithHandlerInView(message:String, parent: UIViewController,ok: @escaping (_ result: String) -> Void){
        let alertController = UIAlertController(title: nil, message: message , preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK".localized(), style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            ok("test")
        }
        alertController.addAction(okAction)
        parent.present(alertController, animated: true, completion: nil)
    }

    
    
    static func showAlertWithCancel(message:String, parent: UIViewController,ok: @escaping (_ result: String) -> Void, cancel:@escaping (_ result: String) -> Void){
        let alertController = UIAlertController(title: nil, message: message , preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok".localized(), style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            ok("test")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel".localized(), style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            cancel("test")
        }
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)

        parent.present(alertController, animated: true, completion: nil)
    }

}


extension UIAlertController {
    
    func show() {
        present(animated: true, completion: nil)
    }
    
    func present(animated: Bool, completion: (() -> Void)?) {
        if let rootVC = UIApplication.shared.keyWindow?.rootViewController {
            presentFromController(controller: rootVC, animated: animated, completion: completion)
        }
    }
    
    private func presentFromController(controller: UIViewController, animated: Bool, completion: (() -> Void)?) {
        if  let navVC = controller as? UINavigationController,
            let visibleVC = navVC.visibleViewController {
            presentFromController(controller: visibleVC, animated: animated, completion: completion)
        } else {
            if  let tabVC = controller as? UITabBarController,
                let selectedVC = tabVC.selectedViewController {
                presentFromController(controller: selectedVC, animated: animated, completion: completion)
            } else {
                controller.present(self, animated: animated, completion: completion)
            }
        }
    }
}
